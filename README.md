# Getting and Cleaning data - Course Project

This repo contains all the code and data submitted in the course project for [Getting and Cleaning data](https://www.coursera.org/learn/data-cleaning) in the Data Science Specialization track of John Hopkins University at Coursera.

## Repository organization

All the data needed to complete this project resides in the `data` directory. 
There are two main folders: `uci`, which stores the raw data, and `results`, which stores the processed files.
The `data` directory have the following tree:
```text
.
├── results
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
