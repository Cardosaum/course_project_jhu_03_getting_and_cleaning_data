# setup.R
#
# this script setup all the libraries and data needed to
# conduct the analysis

# install the dependencies
install.packages("tidyverse")

# download the files and configure source data directory
## this was the url for the file in 2020-05-22
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, "./data/uci.zip", method = "curl")
unzip("./data/uci.zip", exdir = "./data")
file.rename("./data/UCI HAR Dataset", "./data/uci")
file.rename("./data/uci/test/Inertial Signals/", "./data/uci/test/inertialsignals")
file.rename("./data/uci/train/Inertial Signals/", "./data/uci/train/inertialsignals")

## create directory to store the processed dataframes
dir.create("./data/results", showWarnings = FALSE, recursive = TRUE)
