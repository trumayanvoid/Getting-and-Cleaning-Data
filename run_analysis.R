## run_analysis.R cleans up a data set obtained from
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## with a full description of data located on
## https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
## then outputs the tidy csv version of that data named tidy_data.csv 

# Load dplyr and tidyr packages

library(dplyr)
library(tidyr)

# Download the zip file containing the datasets and unzip in your working directory

temp <- tempfile()

download.file("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip", temp)

unzip(temp, exdir = "yourdirectory")

unlink(temp)

# Set your working dir to where the unzipped file is located
# Use read.delim since were dealing with .txt files

setwd("yourdirectory/UCI HAR Dataset")
      read.delim("features.txt", header = FALSE) -> features
      read.delim("activity_labels.txt", header = FALSE) -> activity

setwd("yourdirectory/UCI HAR Dataset/test")
      read.delim("X_test.txt", header = FALSE, sep = "") -> testset
      read.delim("y_test.txt", header = FALSE) -> testlabels
      read.delim("subject_test.txt", header = FALSE, sep = "") -> idtest

setwd("yourdirectory/UCI HAR Dataset/train")
      read.delim("X_train.txt", header = FALSE, sep = "") -> trainingset
      read.delim("y_train.txt", header = FALSE) -> traininglabels
      read.delim("subject_train.txt", header = FALSE, sep = "") -> idtrain

# Separate the preceding number before each element in features 
# Remove the column with the separated number and select for "features" column

colnames(features) = "features"
     separate(features, col = "features", into = c("value", "features"), sep = " ") -> features
           select(features, features) -> features

# Transpose features to let it serve as column names

colnames(features) = NULL;
     t(features) -> features
          c("volunteer_id", "activitylabel", features) -> columnames

# Make sure the datasets don't have column names for easier manipulation 

colnames(testset) =NULL
colnames(testlabels) = NULL
colnames(idtest) = NULL

colnames(trainingset) = NULL
colnames(traininglabels) = NULL
colnames(idtrain) = NULL

# Combine the subject id, activity label, and sets (training/test)

cbind(idtest, testlabels, testset) -> test
cbind(idtrain, traininglabels, trainingset) -> train

colnames(test) = NULL
colnames(train) = NULL

# make.names can make the column names as unique values 
# for easier usage on dplyr functions later

make.names(columnames, unique = TRUE) -> columnames
    colnames(test) = columnames
         colnames(train) = columnames

# Separate the preceding number before each element in activity from activity type

colnames(activity) = "activity"
separate(activity, col="activity", into = c("label", "activity_type"), sep = " ") -> activity

# Merge activity to link the associated activity type  with activity label

merge(test, activity, by.x = "activitylabel", by.y= "label") -> test2
merge(train, activity, by.x = "activitylabel", by.y= "label") -> train2

# Combine the training and test sets through rbind
# Extract only the measurements on mean and standard deviation for each measurement
# using select()

rbind(test2, train2) -> merged_sets
    select(merged_sets, volunteer_id, activity_type, contains(c("mean","std"))) -> extract_data
         arrange(extract_data, volunteer_id, desc(activity_type)) -> extract_data

# Create a new independent tidy data set 
# with the average of each variable for each activity and each subject.

tidy_data<-extract_data %>% group_by(activity_type, volunteer_id) %>% summarize_all(mean) %>%
     arrange(desc(activity_type), volunteer_id);

write.table(tidy_data, "yourdirectory/tidy_data.txt", row.names = FALSE)

# Check the output

print("Opening tidy_data.txt...")

read.delim("yourdirectory/tidy_data.txt", header = TRUE) %>% print

