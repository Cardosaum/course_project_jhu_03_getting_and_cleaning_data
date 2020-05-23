# Code Book

In this text I pretend to briefly explain how I processed the data in order to produce the two final requested datasets.

## Configuring the environment and downloading data

In the file `./setup.R`, the libraries needed are installed in a local instance managed by [packrat](https://rstudio.github.io/packrat/).
Also, the data provided by [UCI](https://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones#) are downloaded and saved in the directory `./data`.

## Explaning data

For a more thourough explanation about the raw data, read `./data/uci/README.txt`.

## Cleaning data

`./scripts/run_analysis.R` is the script created to properly clean the data.
Briefly, this scripts does the following:

1. Load _train_ and _test_ datasets.
2. Format them to have colunms _type_, _activity_ and _subject_.
    this information was extracted from files:
    - _type_: `./data/uci/N` 
    - _activity_: `./data/uci/N/y_N.txt` 
    - _subject_: `./data/uci/N/subject_N.txt`
    (where *N* stands for train or test)
3. Merge both _train_ and _test_ dataframes 
4. Select only the colunms _type_, _activity_, _subject_, and colunms containing _*mean*_ and _*std*_. 
5. From dataframe of the previous step, create a subset with the average of each variable for each _activity_ and each _subject_. 
6. Finaly, write dataframes of both steps 4 and 5 to csv files named `./data/results/uci_all.csv` and `./data/results/uci_grouped.csv`, respectively.

### Important observations

For `./setup.R` and `./scripts/run_analysis.R` to run properly, *your working directory should be the root directory of the repository*.
i.e. your working directory must be `./course_project_jhu_03_getting_and_cleaning_data/`.
