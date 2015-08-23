

## Project Description
This project was to evaluate 30 participants within 19-48 years of age while they were performing a series of activities. Each participant ore a smartphone on his/her waist to track accelerometer and gyroscope signals.  The participants were divided into two groups 70% in the training group and 30% in the test group.  

For more detailed information about the project see the README.txt and features_info.txt files in the data files. 

##Study design and data processing

###Collection of the raw data
The data was collected from the accelerometer and gyroscope embedded in a Samsung Galaxy SII smartphone worn on the waist of participants.

###Notes on the original (raw) data 
As per the README.txt file in the data files the "sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain." 1

##Creating the tidy datafile

###Guide to create the tidy data file
 1. Download the dataset to your working directory
 
 2. type source("run_analysis.r") to load the script
 
 3. type get.tidyData() to run the script

###Cleaning of the data
The tidy data was created by downloading the files from and reading them into R.  Column names were applied and the data sets were merged together.  At that point the data set was filtered to include only the mean and standard deviation data. For detailed information on how the data was processed see the README.md file

##Description of the variables in the tiny_data.txt file
The variable names include the following terms

  - t - time, captured at a constant rate of 50 Hz
  
  - body - derived from the acceleration signal using a low pass Butterworth filter
  
  - Accellerometer - data from acceleration signal
  
  - Jerk - jerk signals derived from body linear acceleration and angular velocity
  
  - Gyroscopic - data from gyroscopic signal
  
  - Gravity - derived from the acceleration signal using a low pass Butterworth filter
  
  - f - frequency domain signals
  
  - Magnitude - calculated using the Euclidean norm
  
  - '_XYZ' is used to denote 3-axial signals in the X, Y and Z directions. 2

###Variables

- ID: participant ID number
- activityType: the activity the participant was performing when the data was collected

Time Variables

- tBodyAccelerometer_mean_X: mean of the body acceleration signal on the x axis
- tBodyAccelerometer_mean_Y: mean of the body acceleration signal on the y axis
- tBodyAccelerometer_mean_Z: mean of the body acceleration signal on the z axis
- tBodyAccelerometer_std_X: standard deviation of the body acceleration signal on the x axis
- tBodyAccelerometer_std_Y: standard deviation of the body acceleration signal on the y axis
- tBodyAccelerometer_std_Z: standard deviation of the body acceleration signal on the z axis
- tGravityAccelerometer_mean_X: mean of the gravity acceleration signal on the x axis
- tGravityAccelerometer_mean_Y: mean of the gravity acceleration signal on the y axis
- tGravityAccelerometer_mean_Z: mean of the gravity acceleration signal on the z axis
- tGravityAccelerometer_std_X: standard deviation of the gravity acceleration signal on the x axis
- tGravityAccelerometer_std_Y: standard deviation of the gravity acceleration signal on the y axis
- tGravityAccelerometer_std_Z: standard deviation of the gravity acceleration signal on the z axis
- tBodyAccelerometerJerk_mean_X: mean of the body acceleration signal jerk on the x axis
- tBodyAccelerometerJerk_mean_Y: mean of the body acceleration signal jerk on the y axis
- tBodyAccelerometerJerk_mean_Z: mean of the body acceleration signal jerk on the z axis
- tBodyAccelerometerJerk_std_X: standard deviation of the body acceleration signal jerk on the x axis
- tBodyAccelerometerJerk_std_Y: standard deviation of the body acceleration signal jerk on the y axis
- tBodyAccelerometerJerk_std_Z: standard deviation of the body acceleration signal jerk on the z axis
- tBodyGyroscopic_mean_X: mean of the body gyroscopic signal on the x axis
- tBodyGyroscopic_mean_Y: mean of the body gyroscopic signal on the y axis
- tBodyGyroscopic_mean_Z: mean of the body gyroscopic signal on the z axis
- tBodyGyroscopic_std_X: standard deviation of the body gyroscopic signal on the x axis
- tBodyGyroscopic_std_Y: standard deviation of the body gyroscopic signal on the y axis
- tBodyGyroscopic_std_Z: standard deviation of the body gyroscopic signal on the z axis
- tBodyGyroscopicJerk_mean_X: mean of the body gyroscopic signal jerk on the x axis
- tBodyGyroscopicJerk_mean_Y: mean of the body gyroscopic signal jerk on the y axis
- tBodyGyroscopicJerk_mean_Z: mean of the body gyroscopic signal jerk on the z axis
- tBodyGyroscopicJerk_std_X: standard deviation of the body gyroscopic signal jerk on the x axis
- tBodyGyroscopicJerk_std_Y: standard deviation of the body gyroscopic signal jerk on the y axis
- tBodyGyroscopicJerk_std_Z: standard deviation of the body gyroscopic signal jerk on the z axis
- tBodyAccelerometerMagnitude_mean: mean of the acceleration signal magnitude on the x axis
- tBodyAccelerometerMagnitude_std: mean of the acceleration signal magnitude on the y axis
- tGravityAccelerometerMagnitude_mean: mean of the acceleration signal magnitude on the z axis
- tGravityAccelerometerMagnitude_std: standard deviation of the acceleration signal magnitude on the x axis
- tBodyAccelerometerJerkMagnitude_mean: standard deviation of the acceleration signal jerk magnitude on the y axis
- tBodyAccelerometerJerkMagnitude_std: standard deviation of the acceleration signal jerk magnitude on the z axis
- tBodyGyroscopicMagnitude_mean: mean of the gyroscopic signal magnitude on the x axis
- tBodyGyroscopicMagnitude_std: mean of the gyroscopic signal magnitude on the y axis
- tBodyGyroscopicJerkMagnitude_mean: mean of the gyroscopic signal magnitude jerk on the z axis
- tBodyGyroscopicJerkMagnitude_std: standard deviation of the gyroscopic signal magnitude jerk on the z axis

Fast Fourier Transform Variables

- fBodyAccelerometer_mean_X: mean of the body acceleration signal on the x axis
- fBodyAccelerometer_mean_Y: mean of the body acceleration signal on the y axis
- fBodyAccelerometer_mean_Z: mean of the body acceleration signal on the z axis
- fBodyAccelerometer_std_X: standard deviation of the body acceleration signal on the x axis
- fBodyAccelerometer_std_Y: standard deviation of the body acceleration signal on the y axis
- fBodyAccelerometer_std_Z: standard deviation of the body acceleration signal on the z axis
- fBodyAccelerometerJerk_mean_X: mean of the body acceleration signal jerk on the x axis
- fBodyAccelerometerJerk_mean_Y: mean of the body acceleration signal jerk on the y axis
- fBodyAccelerometerJerk_mean_Z: mean of the body acceleration signal jerk on the z axis
- fBodyAccelerometerJerk_std_X: standard deviation of the body acceleration signal jerk on the x axis
- fBodyAccelerometerJerk_std_Y: standard deviation of the body acceleration signal jerk on the y axis
- fBodyAccelerometerJerk_std_Z: standard deviation of the body acceleration signal jerk on the z axis
- fBodyGyroscopic_mean_X: mean of the body gyroscopic signal on the x axis
- fBodyGyroscopic_mean_Y: mean of the body gyroscopic signal on the y axis
- fBodyGyroscopic_mean_Z: mean of the body gyroscopic signal on the z axis
- fBodyGyroscopic_std_X: standard deviation of the body gyroscopic signal on the x axis
- fBodyGyroscopic_std_Y: standard deviation of the body gyroscopic signal on the y axis
- fBodyGyroscopic_std_Z: standard deviation of the body gyroscopic signal on the z axis
- fBodyAccelerometerMagnitude_mean: mean of the acceleration signal magnitude on the x axis
- fBodyAccelerometerMagnitude_std: mean of the acceleration signal magnitude on the y axis
- fBodyAccelerometerJerkMagnitude_mean: standard deviation of the acceleration signal jerk magnitude on the y axis
- fBodyAccelerometerJerkMagnitude_std: standard deviation of the acceleration signal jerk magnitude on the z axis
- fBodyGyroscopicMagnitude_mean: mean of the gyroscopic signal magnitude on the x axis
- fBodyGyroscopicMagnitude_std: mean of the gyroscopic signal magnitude on the y axis
- fBodyGyroscopicJerkMagnitude_mean: mean of the gyroscopic signal magnitude jerk on the z axis
- fBodyGyroscopicJerkMagnitude_std: standard deviation of the gyroscopic signal magnitude jerk on the z axis


##Sources
1. README.txt file included in the original data files
2. feaures_info.txt file included in original data files
