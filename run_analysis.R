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

rm(destFile, folderName, fileUrl)

#------------------------------------------------------------------------------------------------------------------
# 2. Read data into R
#------------------------------------------------------------------------------------------------------------------

features_names = select(read.table("./UCI HAR Dataset/features.txt", 
                                   col.names = c("order", "feature_name"), stringsAsFactors = F), "feature_name")
columns_to_read = grep("mean|std", features_names[,1])
features_names = features_names[columns_to_read, ]

train_data = data.table::fread("./UCI HAR Dataset/train/X_train.txt",
                               select = columns_to_read, stringsAsFactors = F)
train_labels = read.table("./UCI HAR Dataset/train/y_train.txt", stringsAsFactors = F)
train_subjects_numbers = read.table("./UCI HAR Dataset/train/subject_train.txt", stringsAsFactors = F)

test_data = data.table::fread("./UCI HAR Dataset/test/X_test.txt", select = columns_to_read, stringsAsFactors = F)
test_labels = read.table("./UCI HAR Dataset/test/y_test.txt", stringsAsFactors = F)
test_subjects_numbers = read.table("./UCI HAR Dataset/test/subject_test.txt", stringsAsFactors = F)

activity_levels = read.table(".//UCI HAR Dataset/activity_labels.txt")
rm(columns_to_read)

#------------------------------------------------------------------------------------------------------------------
# 3. Change feature names to be more descriptive
#------------------------------------------------------------------------------------------------------------------

features_names = sub("^t", "timeDomain", features_names)
features_names = sub("^f", "frequencyDomain", features_names)
features_names = sub("-m", "M", features_names)
features_names = sub("-std", "StandardDeviation", features_names)
features_names = sub("\\()", "", features_names)
features_names = sub("-", "", features_names)
features_names = sub("Acc", "Accelerometer", features_names)
features_names = sub("Gyro", "Gyroscope", features_names)
features_names = sub("Mag", "Magnitude", features_names)
features_names = sub("Freq", "Frequency", features_names)

#------------------------------------------------------------------------------------------------------------------
# 4. Change the activities values to factors with labels
#------------------------------------------------------------------------------------------------------------------

test_labels = factor(as.numeric(test_labels[,1]), levels = as.numeric(activity_levels[,1]),
                     labels = activity_levels[,2])
train_labels = factor(as.numeric(train_labels[,1]), levels = as.numeric(activity_levels[,1]),
                      labels = activity_levels[,2])

rm(activity_levels)

#------------------------------------------------------------------------------------------------------------------
# 5. Merge the dataset
#------------------------------------------------------------------------------------------------------------------
train_data = cbind(train_subjects_numbers, train_labels, train_data)
test_data = cbind(test_subjects_numbers, test_labels, test_data)

colnames(train_data) = c("subjectNumber", "activityName", features_names)
colnames(test_data) = c("subjectNumber", "activityName", features_names)

combined_data = rbind(train_data, test_data)

rm(train_subjects_numbers, train_labels, train_data, features_names, 
   test_data, test_labels, test_subjects_numbers)







