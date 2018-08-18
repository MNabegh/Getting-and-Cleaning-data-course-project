#------------------------------------------------------------------------------------------------------------------
# John Hopkins coursera data science specilization, Getting and Cleanning data course
# project.
#


library(dplyr)

#------------------------------------------------------------------------------------------------------------------
# 1. Download and unzip the file
#------------------------------------------------------------------------------------------------------------------

fileUrl = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
destFile = "UCI HAR Dataset.zip"

if (!file.exists(destFile))
    download.file(fileUrl, destfile = "UCI HAR Dataset.zip", mode = "wb")

folderName = "UCI HAR Dataset"

if(!file.exists(folderName))
    unzip(destFile)

#------------------------------------------------------------------------------------------------------------------
# 2. Read data into R
#------------------------------------------------------------------------------------------------------------------

features_names = select(read.table("./UCI HAR Dataset/features.txt", col.names = c("order", "feature_name"), stringsAsFactors = F), "feature_name")
columns_to_read = grep("mean|std", features_names[,1])
features_names = features_names[columns_to_read, ]

train_data = data.table::fread("./UCI HAR Dataset/train/X_train.txt", select = columns_to_read, stringsAsFactors = F)
train_labels = read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = F)
train_subjects_numbers = read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = F)

test_data = data.table::fread("./UCI HAR Dataset/test/X_test.txt", select = columns_to_read, stringsAsFactors = F)
test_labels = read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = F)
test_subject_numebrs = read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = F)

activity_levels = read.table(".//UCI HAR Dataset/activity_labels.txt")
    