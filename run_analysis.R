####################################################################################################

# Week 4 Course Project 

####################################################################################################


# Download and unzip file into local disk, install and load packages. 

download.file(
      'https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip',
      "/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI.zip", method="curl")

unzip("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI.zip")

install.packages("reshape2")
library(reshape2)
library(dplyr)

####################################################################################################
# 1.Merges the training and the test sets to create one data set.
####################################################################################################

# reading x_train, y_train, subject_train, x_test, y_test, subject_test (all txt files) into r using read.table

x_train<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/train/X_train.txt")

y_train<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/train/y_train.txt")

subject_train<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/train/subject_train.txt")

x_test<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/test/X_test.txt")

y_test<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/train/y_test.txt")

test_train<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/train/subject_train.txt")

# Merging train and test data together. 

x_merged<-rbind(x_train,x_test)
y_merged<-rbind(y_train,y_test)
subject_merged<-rbind(subject_train,subject_test)

data_merged<-cbind(subject_merged,y_merged, x_merged)

####################################################################################################
# 2.Extracts only the measurements on the mean and standard deviation for each measurement.
####################################################################################################

# reading features.txt into r
features<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/features.txt")

# convert feature.txt into a character string using subset and as.character 
feature_name<-feature[,2]
feature_name<-as.character(feature_name)

# renaming data set with feature character string
names(data_merged)<-c("subject", "activity", feature_name)

# subsetting the columns with "mean" or "std" and saving the result mean_std, then add subject and activity back into the dataframe using cbind

mean_std<-data_merged[,grepl("mean|std", names(data_merged) )]
data_merged<-cbind(subject_merged,y_merged, mean_std)

####################################################################################################
# 3.Uses descriptive activity names to name the activities in the data set
####################################################################################################

# read activity_labels into r 
activity_labels<-read.table("/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/activity_labels.txt")

# use factor to encode the interger vector 1-6 into factors using activity labels 
data_merged[,2]<-factor(data_merged[,2], levels = c(1, 2, 3, 4, 5, 6), labels =  activity_labels[,2])

####################################################################################################
# 4.Appropriately labels the data set with descriptive variable names.
####################################################################################################

# rename the first two columns as subject and activity 
colnames(data_merged)[1:2] <- c("subject", "activity")

# removing "-". "(" and ")" from the remaining column names 
names(data_merged)<-gsub("\\-|\\(|\\)","", names(data_merged))

####################################################################################################
# 5.From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
####################################################################################################

# melting the data set (clarifying id vs variables and getting table into the long form)
data_melted<-melt(data_merged,id=c("subject", "activity"))

# creating a new dataframe with a unique value for each variable for each id. 
data_mean <- dcast(data_melted, subject + activity ~ variable, mean)

# writing the dataframe into a txt file using write.table
write.table(data_mean, file="/Users/bubbles/Desktop/Data Science Learnings/Course 3 Getting and Tidying Data/R data/UCI/tidy.txt", row.names=FALSE)
