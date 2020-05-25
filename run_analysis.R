#Author: SYZ
# Load Packages 
library(data.table)
library(reshape2)
#Load data
path <- getwd()
url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(url, file.path(path, "dataFiles.zip"))
unzip(zipfile = "dataFiles.zip")
path<-file.path(path , "UCI HAR Dataset")
#I would like to check
files<-list.files(path, recursive=TRUE)
files
#Read data (read.table)
#label
data_activitylabels_train <- read.table(file.path(path,"train" , "Y_train.txt" ),header = FALSE)
data_activitylabels_test <- read.table(file.path(path,"test" , "Y_test.txt" ),header = FALSE)
#data(feature)
data_feature_train <- read.table(file.path(path,"train" , "X_train.txt" ),header = FALSE)
data_feature_test <- read.table(file.path(path,"test" , "X_test.txt" ),header = FALSE)
#subject
data_subject_train <- read.table(file.path(path,"train" , "subject_train.txt" ),header = FALSE)
data_subject_test <- read.table(file.path(path,"test" , "subject_test.txt" ),header = FALSE)


#Question 1: merges the training and the test sets to create one data set.
#simply combine trani & test data
data_activitylabels <- rbind(data_activitylabels_train, data_activitylabels_test)
data_feature <- rbind(data_feature_train, data_feature_test)
data_subject <- rbind(data_subject_train, data_subject_test)
#rename the columns
names(data_activitylabels) <- c('activity_labels')
data_feature_name <- read.table(file.path(path, "features.txt"),head=FALSE)
names(data_feature) <- data_feature_name$V2
names(data_subject) <- c('subject')
#merge all columns to create full dataset
data_1<-cbind(data_activitylabels,data_subject)
data_full<-cbind(data_1,data_feature)




#Question 2: Extracts only the measurements on the mean and standard deviation for each measurement.

feature_new <- names(data_feature)[grep("mean\\(\\)|std\\(\\)", names(data_feature))]
data_new <- subset(data_full,select=c('activity_labels','subject',as.character(feature_new)))



#Question 3: Uses descriptive activity names to name the activities in the data set

activity_name <- read.table(file.path(path, "activity_labels.txt"),head=FALSE)
data_new$activity_labels <- as.character(data_new$activity_labels)
for (i in 1:6){
	data_new$activity_labels[data_new$activity_labels==i]<-as.character(activity_name$V2[i])
}
data_new$activity_labels <- as.factor(data_new$activity_labels)



#Question 4: Appropriately labels the data set with descriptive variable names.

names(data_new)<-gsub('Acc', 'accelerometer', names(data_new))
names(data_new)<-gsub('Gyro', 'gyroscope', names(data_new))
names(data_new)<-gsub('Mag', 'M]magnitude', names(data_new))
names(data_new)<-gsub('^t', 'time', names(data_new))
names(data_new)<-gsub('^f', 'frequency', names(data_new))
names(data_new)<-gsub('-mean()', 'mean', names(data_new))
names(data_new)<-gsub('-std()', 'standard deviation', names(data_new))
names(data_new)<-gsub('-freq()', 'frequency', names(data_new))
names(data_new)<-gsub('BodyBody', 'body', names(data_new))

#Question 5: From the data set in step 4, creates a second, independent tidy data set with the average of 
#each variable for each activity and each subject.

write.table(data_new, "tidy_data.txt", row.name=FALSE)



