---
output:
  word_document: default
  html_notebook: default
  html_document: default
---
#Data Set Information:

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.


#Attribute Information:

For each record in the dataset it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope.
- A 561-feature vector with time and frequency domain variables.
- Its activity label.
- An identifier of the subject who carried out the experiment. 

#The original data was transformed by

- Merging the training and the test sets to create one data set.
- Extracting only the measurements on the mean and standard deviation for each measurement.
- Using descriptive activity names to name the activities in the data set
- Appropriately labeling the data set with descriptive activity names.
- Creating a second, independent tidy data set with the average of each variable for each activity and each subject.

#Identifiers

subject - The ID of the test subject
activity - The type of activity performed when the corresponding measurements were taken

#Tidy Data Structure

Columns heading Tidy File

    timeBodyAccelerometer-mean()-X (radians per sec)
    timeBodyAccelerometer-mean()-Y (radians per sec)
    timeBodyAccelerometer-mean()-Z (radians per sec)
    timeBodyAccelerometer-std()-X (radians per sec)
    timeBodyAccelerometer-std()-Y (radians per sec)
    timeBodyAccelerometer-std()-Z (radians per sec)
    timeGravityAccelerometer-mean()-X (radians per sec)
    timeGravityAccelerometer-mean()-Y (radians per sec)
    timeGravityAccelerometer-mean()-Z (radians per sec)
    timeGravityAccelerometer-std()-X (radians per sec)
    timeGravityAccelerometer-std()-Y (radians per sec)
    timeGravityAccelerometer-std()-Z (radians per sec)
    timeBodyAccelerometerJerk-mean()-X (radians per sec)
    timeBodyAccelerometerJerk-mean()-Y (radians per sec)
    timeBodyAccelerometerJerk-mean()-Z (radians per sec)
    timeBodyAccelerometerJerk-std()-X (radians per sec)
    timeBodyAccelerometerJerk-std()-Y (radians per sec)
    timeBodyAccelerometerJerk-std()-Z (radians per sec)
    timeBodyGyroscope-mean()-X (radians per sec)
    timeBodyGyroscope-mean()-Y (radians per sec)
    timeBodyGyroscope-mean()-Z (radians per sec)
    timeBodyGyroscope-std()-X (radians per sec)
    timeBodyGyroscope-std()-Y (radians per sec)
    timeBodyGyroscope-std()-Z (radians per sec)
    timeBodyGyroscopeJerk-mean()-X (radians per sec)
    timeBodyGyroscopeJerk-mean()-Y (radians per sec)
    timeBodyGyroscopeJerk-mean()-Z (radians per sec)
    timeBodyGyroscopeJerk-std()-X (radians per sec)
    timeBodyGyroscopeJerk-std()-Y (radians per sec)
    timeBodyGyroscopeJerk-std()-Z (radians per sec)
    timeBodyAccelerometerMagnitude-mean() (radians per sec)
    timeBodyAccelerometerMagnitude-std() (radians per sec)
    timeGravityAccelerometerMagnitude-mean() (radians per sec)
    timeGravityAccelerometerMagnitude-std() (radians per sec)
    timeBodyAccelerometerJerkMagnitude-mean() (radians per sec)
    timeBodyAccelerometerJerkMagnitude-std() (radians per sec)
    timeBodyGyroscopeMagnitude-mean() (radians per sec)
    timeBodyGyroscopeMagnitude-std() (radians per sec)
    timeBodyGyroscopeJerkMagnitude-mean() (radians per sec)
    timeBodyGyroscopeJerkMagnitude-std() (radians per sec)
    frequencyBodyAccelerometer-mean()-X (hertz)
    frequencyBodyAccelerometer-mean()-Y (hertz)
    frequencyBodyAccelerometer-mean()-Z (hertz)
    frequencyBodyAccelerometer-std()-X (hertz)
    frequencyBodyAccelerometer-std()-Y (hertz)
    frequencyBodyAccelerometer-std()-Z (hertz)
    frequencyBodyAccelerometerJerk-mean()-X (hertz)
    frequencyBodyAccelerometerJerk-mean()-Y (hertz)
    frequencyBodyAccelerometerJerk-mean()-Z (hertz)
    frequencyBodyAccelerometerJerk-std()-X (hertz)
    frequencyBodyAccelerometerJerk-std()-Y (hertz)
    frequencyBodyAccelerometerJerk-std()-Z (hertz)
    frequencyBodyGyroscope-mean()-X (hertz)
    frequencyBodyGyroscope-mean()-Y (hertz)
    frequencyBodyGyroscope-mean()-Z (hertz)
    frequencyBodyGyroscope-std()-X (hertz)
    frequencyBodyGyroscope-std()-Y (hertz)
    frequencyBodyGyroscope-std()-Z (hertz)
    frequencyBodyAccelerometerMagnitude-mean() (hertz)
    frequencyBodyAccelerometerMagnitude-std() (hertz)
    frequencyBodyAccelerometerJerkMagnitude-mean() (hertz)
    frequencyBodyAccelerometerJerkMagnitude-std() (hertz)
    frequencyBodyGyroscopeMagnitude-mean() (hertz)
    frequencyBodyGyroscopeMagnitude-std() (hertz)
    frequencyBodyGyroscopeJerkMagnitude-mean() (hertz)
    frequencyBodyGyroscopeJerkMagnitude-std() (hertz)






