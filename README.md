# Getting-and-Cleaning-data-course-project

## Overview <a name="overview"></a>

One of the most exciting areas in all of data science right now is wearable computing - see for example this article . Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data linked to from the course website represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here are the original data for the project:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The original data comes with a README.txt file that explains how it has been collected, howevever, this is out of the scope of this project. As, this project aims to provide a tidy dataset with some summary statstics from the original messy dataset.

The required tasks in this project are:
- Provide an R script that download and tidy the original dataset.
- Provide a code book for the data set.
- Write the tidy dataset to a file.

## Delivrables

### R script

R script called run_analysis.R that does the following, by using the training and the test datasets provided in the zipfile linked in the [Overview](#overview)

1. Merges the training and the test sets to create one data set.
1. Extracts only the measurements on the mean and standard deviation for each measurement.
1. Uses descriptive activity names to name the activities in the data set
1. Appropriately labels the data set with descriptive variable names.
1. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Code book

A code book that describes the variables, the data, and any transformations or work that was done by the R script on the original dataset to produce the output data in the `tidy_data.txt`.

### Tidy data

Tidy and summarized output data produced by the R script after operating on the original data and saved in `tidy_data.txt`.
