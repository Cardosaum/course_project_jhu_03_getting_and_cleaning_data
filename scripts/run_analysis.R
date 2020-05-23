# merge_datasets.R
#
# This script takes two datasets (X_train and X_test) and merges them

# load libraries
library(tidyverse)

# supress warning messages
oldw <- getOption("warn")
options(warn = -1)

# set the working directory
if (!as.logical(grep("scripts$", getwd()))){
    setwd("./scripts")
}

# read the datasets
## first we specify the file names 
features_file       <- "../data/uci/features.txt"
labels_file         <- "../data/uci/activity_labels.txt"
train_file          <- "../data/uci/train/X_train.txt" 
train_labels_file   <- "../data/uci/train/y_train.txt"
train_subject_file  <- "../data/uci/train/subject_train.txt"
test_file           <- "../data/uci/test/X_test.txt" 
test_labels_file    <- "../data/uci/test/y_test.txt"
test_subject_file   <- "../data/uci/test/subject_test.txt"


## now we read the data
## the file "./data/features" contain the labels for the 
## dataset colunms
features_data <- read_delim(features_file, " ", col_names = c("feature_id", "feature_description"))
labels_data   <- read_delim(labels_file, " ", col_names = c("activity_id", "activity_description"))
dataset_names <- features_data$feature_description %>% make.names()
dataset_names <- gsub("\\.\\.\\.", ".", dataset_names)
train_data    <- read_delim(train_file, " ", col_names = dataset_names, trim_ws = TRUE)
test_data     <- read_delim(test_file, " ", col_names = dataset_names, trim_ws = TRUE)

## read activity labels for each dataset
train_labels <- read_csv(train_labels_file, col_names = c("activity"), trim_ws = TRUE)
test_labels  <- read_csv(test_labels_file, col_names = c("activity"), trim_ws = TRUE)

## read subject information for each dataset
train_subject <- read_csv(train_subject_file, col_names = c("subject"), trim_ws = TRUE)
test_subject  <- read_csv(test_subject_file,  col_names = c("subject"), trim_ws = TRUE)


## this loop maps labels_id with labels_attribute
## just compare `train_labels` immediatly after and before
## this loop to underestand
for (i in seq_len(nrow(labels_data))){
    train_labels <- mutate(train_labels, activity = ifelse(activity == labels_data$activity_id[i], tolower(labels_data$activity_description[i]), activity))
    test_labels  <- mutate(test_labels,  activity = ifelse(activity == labels_data$activity_id[i], tolower(labels_data$activity_description[i]), activity))
}

## create one column in each dataset to specify it's origin
train_data <- train_data %>% mutate(type = "train")
test_data  <- test_data  %>% mutate(type = "test")

## create one column in each dataset to specify it's activity
train_data <- train_data %>% mutate(activity = train_labels$activity)
test_data  <- test_data  %>% mutate(activity = test_labels$activity)

## create one column in each dataset to specify subject information
train_data <- train_data %>% mutate(subject = train_subject$subject)
test_data  <- test_data  %>% mutate(subject = test_subject$subject)

# merge the datasets
final_data_all <- full_join(train_data, test_data) %>% select(type, activity, subject, contains("mean"), contains("std"))
final_data_grouped <- final_data_all %>% select(-type) %>% group_by(activity, subject) %>% summarise_each(list(mean = mean))

# write processed dataframes to csv
write_csv(final_data_all, "../data/results/uci_all.csv")
write_csv(final_data_grouped, "../data/results/uci_grouped.csv")

# (requested by submission assignment) return `final_data_grouped` in the end of script execution
print(final_data_grouped)

# restore warning messages
options(warn = oldw)
