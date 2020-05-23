# Getting and Cleaning data - Course Project

This repo contains all the code and data submitted in the course project for [Getting and Cleaning data](https://www.coursera.org/learn/data-cleaning) in the Data Science Specialization track by John Hopkins University at Coursera.

## Repository organization

All the data needed to complete this project resides in the `data` directory. 
There are two main folders: `uci`, which stores the raw data, and `results`, which stores the processed files.
The `data` directory have the following tree:

```text
.
├── results
│   ├── file_submission.txt
│   ├── uci_all.csv
│   └── uci_grouped.csv
├── uci
│   ├── activity_labels.txt
│   ├── features_info.txt
│   ├── features.txt
│   ├── README.txt
│   ├── test
│   │   ├── inertialsignals
│   │   │   ├── body_acc_x_test.txt
│   │   │   ├── body_acc_y_test.txt
│   │   │   ├── body_acc_z_test.txt
│   │   │   ├── body_gyro_x_test.txt
│   │   │   ├── body_gyro_y_test.txt
│   │   │   ├── body_gyro_z_test.txt
│   │   │   ├── total_acc_x_test.txt
│   │   │   ├── total_acc_y_test.txt
│   │   │   └── total_acc_z_test.txt
│   │   ├── subject_test.txt
│   │   ├── X_test.txt
│   │   └── y_test.txt
│   └── train
│       ├── inertialsignals
│       │   ├── body_acc_x_train.txt
│       │   ├── body_acc_y_train.txt
│       │   ├── body_acc_z_train.txt
│       │   ├── body_gyro_x_train.txt
│       │   ├── body_gyro_y_train.txt
│       │   ├── body_gyro_z_train.txt
│       │   ├── total_acc_x_train.txt
│       │   ├── total_acc_y_train.txt
│       │   └── total_acc_z_train.txt
│       ├── subject_train.txt
│       ├── X_train.txt
│       └── y_train.txt
└── uci.zip
```

The `scripts` folder contains just one file: `run_analysis.R`. 
This script takes the files listed in `CodeBook.md`, combine them and return a merged dataframe, as requested by the command of the course assignment.

</br>
</br>
### Project Assignment objective

For a more fully understanding of the problem proposed, I reproduce below the assignment:
<hr>
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set.
</br>

<b>Review criteria</b>

1. The submitted data set is tidy.  
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

<b>Getting and Cleaning Data Course Project</b>

The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis. You will be graded by your peers on a series of yes/no questions related to the project. You will be required to submit: 1) a tidy data set as described below, 2) a link to a Github repository with your script for performing the analysis, and 3) a code book that describes the variables, the data, and any transformations or work that you performed to clean up the data called CodeBook.md. You should also include a README.md in the repo with your scripts. This repo explains how all of the scripts work and how they are connected.

One of the most exciting areas in all of data science right now is wearable computing - see for example [this article](http://www.insideactivitytracking.com/data-science-activity-tracking-and-the-battle-for-the-worlds-top-sports-brand/). Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

[http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones)

Here are the data for the project:

[https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip)

You should create one R script called run_analysis.R that does the following. 

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
