##  R script for getting and cleaning data project
##  Author: Kasereka Henrys

#--------------------------------------------------------------------------------------------------------------#
##  0 Downloading and unzipping dataset

## Check if directory already exists?
if(!file.exists("./myproject")){
  dir.create("./myproject")
}
Url <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
## Download the file
if(!file.exists("./myproject/dataset.zip")){
  download.file(Url,destfile="./myproject/dataset.zip",mode = "wb")
}
## Unzip the file
if(!file.exists("/myproject/dataset.zip")){
  unzip(zipfile="./myproject/dataset.zip",exdir="./myproject")
}
## List all the files of UCI HAR Dataset folder
path <- file.path("./myproject" , "UCI HAR Dataset")
files<-list.files(path, recursive=TRUE)
#--------------------------------------------------------------------------------------------------------------#

## You should create one R script called run_analysis.R that does the following.
##  Read the Activity files
dataActivityTest  <- read.table(file.path(path, "test" , "y_test.txt" ),header = FALSE)
dataActivityTrain <- read.table(file.path(path, "train", "y_train.txt"),header = FALSE)
## Read the Subject files
dataSubjectTrain <- read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
dataSubjectTest  <- read.table(file.path(path, "test" , "subject_test.txt"),header = FALSE)
## Read Fearures files
dataFeaturesTest  <- read.table(file.path(path, "test" , "X_test.txt" ),header = FALSE)
dataFeaturesTrain <- read.table(file.path(path, "train", "X_train.txt"),header = FALSE)

#--------------------------------------------------------------------------------------------------------------#
##  1 Merges the training and the test sets to create one data set

##  Concatenate the data tables by rows
dataSubject <- rbind(dataSubjectTrain, dataSubjectTest)
dataActivity<- rbind(dataActivityTrain, dataActivityTest)
dataFeatures<- rbind(dataFeaturesTrain, dataFeaturesTest)
##  set names to variables
names(dataSubject)<-c("subject")
names(dataActivity)<- c("activity")
dataFeaturesNames <- read.table(file.path(path, "features.txt"),head=FALSE)
names(dataFeatures)<- dataFeaturesNames$V2

## Merge columns to get the data frame Data for all data
dataCombine <- cbind(dataSubject, dataActivity)
Data <- cbind(dataFeatures, dataCombine)
#--------------------------------------------------------------------------------------------------------------#

## 2 Extracts only the measurements on the mean and standard deviation for each measurement

## Subset Name of Features by measurements on the mean and standard deviation
subdataFeaturesNames<-dataFeaturesNames$V2[grep("mean\\(\\)|std\\(\\)", dataFeaturesNames$V2)]
## Subset the data frame Data by seleted names of Features
selectedNames<-c(as.character(subdataFeaturesNames), "subject", "activity" )
Data<-subset(Data,select=selectedNames)
#--------------------------------------------------------------------------------------------------------------#

## 3 Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE)
## Factorize Variale activity in the data frame Data using descriptive activity names
Data$activity<-factor(Data$activity,labels=activityLabels[,2])
## Test Print
head(Data$activity,30)
#--------------------------------------------------------------------------------------------------------------#

## 4 Appropriately labels the data set with descriptive variable names
names(Data)<-gsub("^t", "time", names(Data))
names(Data)<-gsub("^f", "frequency", names(Data))
names(Data)<-gsub("Acc", "Accelerometer", names(Data))
names(Data)<-gsub("Gyro", "Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody", "Body", names(Data))

names(Data)
#--------------------------------------------------------------------------------------------------------------#

## 5 Creates a second,independent tidy data set and output it
library(dplyr)
Data2<-aggregate(. ~subject + activity, Data, mean)
Data2<-Data2[order(Data2$subject,Data2$activity),]
write.table(Data2, file = "tidydata.txt",row.name=FALSE)










