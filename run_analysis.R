## step 0: Loading libraries and getting data from UCI HAR Dataset folder.
library(data.table)
library(dplyr)

feature_names <- read.table("UCI HAR Dataset/features.txt")
activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt", header = FALSE)
subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt", header = FALSE)
activity_train <- read.table("UCI HAR Dataset/train/y_train.txt", header = FALSE)
features_train <- read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE)
subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
activity_test <- read.table("UCI HAR Dataset/test/y_test.txt", header = FALSE)
features_test <- read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)

## step 1: Merging the training and the test sets to create one data set.
### merging train and test datasets by subject, activity, and features
subject <- rbind(subject_train, subject_test)
colnames(subject) <- "subject"
activity <- rbind(activity_train, activity_test)
colnames(activity) <-  "activity"
features <- rbind(features_train, features_test)
colnames(features) <- t(feature_names[2])
###final merge 
data <- cbind(subject, activity, features)

## step 2: Extracting only the measurements on the mean and standard deviation for each measurement.
### choosing columns with mean adn std in their names
mean_or_std <- grep(".*Mean*|.*Std.*", names(data), ignore.case = T)
mean_or_std <- c(1, 2, mean_or_std)
### subsetting the data by columns with mean and std
data <- data[,mean_or_std]

## step 3: Using descriptive activity names to name the activities in the data set.
data$activity <- as.character(data$activity)
### naming activities by the labels from activity_labels.txt
for(i in 1:6) {
        data$activity[data$activity == i] <- as.character(activity_labels[i,2])
}
### changing activity and subject variables to factor variables
data$activity <- as.factor(data$activity)
data$subject <- as.factor(data$subject)

## step 4: Appropriately labelling the data set with descriptive variable names.
names(data) <- make.names(names(data))
### deleting parenthesis and full stops:
names(data) <- gsub("\\(|\\)", "", names(data), perl = TRUE)
names(data) <- gsub("\\.", "", names(data), perl = TRUE)
### changing abbreviations to full words:
names(data) <- gsub("Acc", "Acceleration", names(data))
names(data) <- gsub("Freq", "Frequency", names(data))
names(data) <- gsub("Mag", "Magnitude", names(data))
names(data) <- gsub('GyroJerk',"AngularAcceleration",names(data))
names(data) <- gsub("Gyro", "AngularSpeed", names(data))
names(data) <- gsub("BodyBody", "Body", names(data))
names(data) <- gsub("^t", "Time", names(data))
names(data) <- gsub("tBody", "TimeBody", names(data))
names(data) <- gsub("^f", "Frequency", names(data))
names(data) <- gsub("angle", "Angle", names(data))
names(data) <- gsub("gravity", "Gravity", names(data))
names(data) <- gsub("mean", "Mean", names(data))
names(data) <- gsub("std", "STD", names(data))

## step 5: Creating a second, independent tidy_data set with the average of each variable for each activity and each subject.
data <- data.table(data)
### merging means for each activity and each subject into a new dataset:
tidy_data <- aggregate(.~subject+activity, data, mean)
### creating a .txt file in the data folder:
write.table(tidy_data, "tidy_data.txt", row.names = F)