# Variable Names
### activity_type (chr)   WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, STANDING, SITTING, LAYING
### volunteer_id (int)   (1:30)
### tBodyAcc.mean...X (num)
### tBodyAcc.mean...Y (num)
### tBodyAcc.mean...Z (num)
### tGravityAcc.mean...X (num)
### tGravityAcc.mean...Y (num)
### tGravityAcc.mean...Z (num)
### tBodyAccJerk.mean...X (num)
### tBodyAccJerk.mean...Y (num)
### tBodyAccJerk.mean...Z (num)
### tBodyGyro.mean...X (num)
### tBodyGyro.mean...Y (num)
### tBodyGyro.mean...Z (num)
### tBodyGyroJerk.mean...X (num)
### tBodyGyroJerk.mean...Y (num)
### tBodyGyroJerk.mean...Z (num)
### tBodyAccMag.mean.. (num)
### tGravityAccMag.mean.. (num)
### tBodyAccJerkMag.mean.. (num)
### tBodyGyroMag.mean.. (num)
### tBodyGyroJerkMag.mean.. (num)
### fBodyAcc.mean...X (num)
### fBodyAcc.mean...Y (num)
### fBodyAcc.mean...Z (num)
### fBodyAcc.meanFreq...X (num)
### fBodyAcc.meanFreq...Y (num)
### fBodyAcc.meanFreq...Z (num)
### fBodyAccJerk.mean...X (num)
### fBodyAccJerk.mean...Y (num)
### fBodyAccJerk.mean...Z (num)
### fBodyAccJerk.meanFreq...X (num)
### fBodyAccJerk.meanFreq...Y (num)
### fBodyAccJerk.meanFreq...Z (num)
### fBodyGyro.mean...X (num)
### fBodyGyro.mean...Y (num)
### fBodyGyro.mean...Z (num)
### fBodyGyro.meanFreq...X (num)
### fBodyGyro.meanFreq...Y (num)
### fBodyGyro.meanFreq...Z (num)
### fBodyAccMag.mean.. (num)
### fBodyAccMag.meanFreq.. (num)
### fBodyBodyAccJerkMag.mean.. (num)
### fBodyBodyAccJerkMag.meanFreq.. (num)
### fBodyBodyGyroMag.mean.. (num)
### fBodyBodyGyroMag.meanFreq.. (num)
### fBodyBodyGyroJerkMag.mean.. (num)
### fBodyBodyGyroJerkMag.meanFreq.. (num)
### angle.tBodyAccMean.gravity. (num)
### angle.tBodyAccJerkMean..gravityMean. (num)
### angle.tBodyGyroMean.gravityMean. (num)
### angle.tBodyGyroJerkMean.gravityMean. (num)
### angle.X.gravityMean. (num)
### angle.Y.gravityMean. (num)
### angle.Z.gravityMean. (num)
### tBodyAcc.std...X (num)
### tBodyAcc.std...Y (num)
### tBodyAcc.std...Z (num)
### tGravityAcc.std...X (num)
### tGravityAcc.std...Y (num)
### tGravityAcc.std...Z (num)
### tBodyAccJerk.std...X (num)
### tBodyAccJerk.std...Y (num)
### tBodyAccJerk.std...Z (num)
### tBodyGyro.std...X (num)
### tBodyGyro.std...Y (num)
### tBodyGyro.std...Z (num)
### tBodyGyroJerk.std...X (num)
### tBodyGyroJerk.std...Y (num)
### tBodyGyroJerk.std...Z (num)
### tBodyAccMag.std.. (num)
### tGravityAccMag.std.. (num)
### tBodyAccJerkMag.std.. (num)
### tBodyGyroMag.std.. (num)
### tBodyGyroJerkMag.std.. (num)
### fBodyAcc.std...X (num)
### fBodyAcc.std...Y (num)
### fBodyAcc.std...Z (num)
### fBodyAccJerk.std...X (num)
### fBodyAccJerk.std...Y (num)
### fBodyAccJerk.std...Z (num)
### fBodyGyro.std...X (num)
### fBodyGyro.std...Y (num)
### fBodyGyro.std...Z (num)
### fBodyAccMag.std.. (num)
### fBodyBodyAccJerkMag.std.. (num)
### fBodyBodyGyroMag.std.. (num)
### fBodyBodyGyroJerkMag.std.. (num)
Feature Selection (from original zipfile to provide more info)
=================

##### The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

##### Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

##### Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

##### These signals were used to estimate variables of the feature vector for each pattern:  '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

##### The set of variables that were estimated from these signals are: 

##### mean(): Mean value
##### std(): Standard deviation

##### Additional vectors obtained by averaging the signals in a signal window sample. These are used on the angle() variable:

##### gravityMean
##### tBodyAccMean
##### tBodyAccJerkMean
##### tBodyGyroMean
##### tBodyGyroJerkMean


