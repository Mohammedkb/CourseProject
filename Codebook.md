#Human Activity Recognition Using Smartphones Dataset-Codebook

##Dataset description

The features selected for this dataset come from the accelerometer and gyroscope 3-axial raw signals. These time domain signals were filtered to remove noise. The acceleration signal was then separated into body and gravity acceleration signals.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm. Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing frequency domain signals.

These signals were used to estimate 561 variables in the feature vector. These 561variables are used as input to the script in the form of training data (X _ train) and test data (X _ test).

The scope of this phase of the project is to process the input datasets (X _ train and X _ test) linked to the activities carried out and to the subjects (volunteers) carrying out these activities. Then, come up with a final tidy data set with the average of measurements for the **mean** and **standard deviation** variables grouped by each activity and each subject (volunteer). Hence, the output dataset (tidyData) consists of 88 variables (including the subject and activity variables). A detailed description of these variables is shown below.

##Notes on variables values and names
 * Activity classes (numbers) have been replaced by their corresponding descriptive labels for better readability and as per project requirements.  E.g. activity class 1 is replaced by "WALKING", and so for other activities.
 * Measurements variable names have been modified from their names in the original dataset for better readability and to go with the naming convention of variables in R Language.

##tidyData file variables detailed description

**subject** (integer [1-30])
>A number from 1 to 30 referring to the subject (volunteer) who carried out the experiment.  

**activity** (character)
>description of the activity performed by the subject. Activities have one of the below values:
>>1. WALKING
>>2. WALKING_UPSTAIRS
>>3. WALKING_DOWNSTAIRS
>>4. SITTING
>>5. STANDING
>>6. LAYING

**Body acceleration mean variables-time signals**

**time _ BodyAcc_mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration mean of measurements in the X-axis direction.

**time _ BodyAcc _ mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration mean of measurements in the Y-axis direction.

**time _ BodyAcc _ mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration mean of measurements in the Z-axis direction.

**Gravity acceleration mean variables-time signals**

**time _ GravityAcc_mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the gravity acceleration mean of measurements in the X-axis direction.

**time _ GravityAcc _ mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the gravity acceleration mean of measurements in the Y-axis direction.

**time _ GravityAcc _ mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the gravity acceleration mean of measurements in the Z-axis direction.

**Body acceleration jerk mean variables-time signals**

**time _ BodyAccJerk _ mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration jerk mean of measurements derived from the body linear acceleration in the X-axis direction.

**time _ BodyAccJerk _ mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration jerk mean of measurements derived from the body linear acceleration in the Y-axis direction.

**time _ BodyAccJerk _ mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration jerk mean of measurements derived from the body linear acceleration in the Z-axis direction.

**Body angular velocity mean variables-time signals**

**time _ BodyGyro_mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity mean of measurements in the X-axis direction.

**time _ BodyGyro_mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity mean of measurements in the Y-axis direction.

**time _ BodyGyro_mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity mean of measurements in the Z-axis direction.

**Body angular velocity jerk mean variables-time signals**

**time _ BodyGyroJerk _ mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity jerk mean of measurements derived from the body angular velocity in the X-axis direction.

**time _ BodyGyroJerk _ mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity jerk mean of measurements derived from the body angular velocity in the Y-axis direction.

**time _ BodyGyroJerk _ mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity jerk mean of measurements derived from the body angular velocity in the Z-axis direction.

**Magnitude mean variables-time signals**

**time _ BodyAccMag _ mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional time domain signal of the body acceleration.

**time _ GravityAccMag _ mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional time domain signal of the gravity acceleration.

**time _ BodyAccJerkMag _ mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional time domain signal of the body acceleration jerk.

**time _ BodyGyroMag _ mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional time domain signal of the body angular velocity.

**time _ BodyGyroJerkMag _ mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional time domain signal of the body angular velocity jerk.

**Body acceleration mean variables-frequency signals**

**freq _ BodyAcc_mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration mean of measurements in the X-axis direction.

**freq _ BodyAcc _ mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration mean of measurements in the Y-axis direction.

**freq _ BodyAcc _ mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration mean of measurements in the Z-axis direction.

**freq _ BodyAcc_meanFreq _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration mean frequency of measurements in the X-axis direction.

**freq _ BodyAcc _ meanFreq _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration mean frequency of measurements in the Y-axis direction.

**freq _ BodyAcc _ meanFreq _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration mean frequency of measurements in the Z-axis direction.

**Body acceleration jerk mean variables-frequency signals**

**freq _ BodyAccJerk _ mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk mean of measurements derived from the body linear acceleration in the X-axis direction.

**freq _ BodyAccJerk _ mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk mean of measurements derived from the body linear acceleration in the Y-axis direction.

**freq _ BodyAccJerk _ mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk mean of measurements derived from the body linear acceleration in the Z-axis direction.

**freq _ BodyAccJerk _ meanFreq _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk mean frequency of measurements derived from the body linear acceleration in the X-axis direction.

**freq _ BodyAccJerk _ meanFreq _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk mean frequency of measurements derived from the body linear acceleration in the Y-axis direction.

**freq _ BodyAccJerk _ meanFreq _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk mean frequency of measurements derived from the body linear acceleration in the Z-axis direction.

**Body angular velocity mean variables-frequency signals**

**freq _ BodyGyro_mean _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity mean of measurements in the X-axis direction.

**freq _ BodyGyro_mean _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity mean of measurements in the Y-axis direction.

**freq _ BodyGyro_mean _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity mean of measurements in the Z-axis direction.

**freq _ BodyGyro_meanFreq _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity mean frequency of measurements in the X-axis direction.

**freq _ BodyGyro_meanFreq _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity mean frequency of measurements in the Y-axis direction.

**freq _ BodyGyro_meanFreq _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity mean frequency of measurements in the Z-axis direction.

**Magnitude mean variables-frequency signals**

**freq _ BodyAccMag_mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional frequency domain signal of the body acceleration.

**freq _ BodyAccMag_meanFreq** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude mean frequencies of the 3-dimensional frequency domain signal of the body acceleration.

**freq _ BodyAccJerkMag_mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional frequency domain signal of the body acceleration jerk.

**freq _ BodyAccJerkMag_meanFreq** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude mean frequencies of the 3-dimensional frequency domain signal of the body acceleration jerk.

**freq _ BodyGyroMag_mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional frequency domain signal of the body angular velocity.

**freq _ BodyGyroMag_meanFreq** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude mean frequencies of the 3-dimensional frequency domain signal of the body angular velocity.

**freq _ BodyGyroJerkMag _ mean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude means of the 3-dimensional frequency domain signal of the body angular velocity jerk.

**freq _ BodyGyroJerkMag _ meanFreq** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude mean frequencies of the 3-dimensional frequency domain signal of the body angular velocity jerk.

**Angle variables**

**angletime_BodyAccMeangravity** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the time signal of the body acceleration mean vector and the gravity vector.

**angletime_BodyAccJerkMeangravityMean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the time signal of the body acceleration jerk mean vector and the gravity mean vector.

**angletime_BodyGyroMeangravityMean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the time signal of the body angular velocity mean vector and the gravity mean vector.

**angletime_BodyGyroJerkMeangravityMean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the time signal of the body angular velocity jerk mean vector and the gravity mean vector.

**angleXgravityMean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the X axis vector and the gravity mean vector.

**angleYgravityMean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the Y axis vector and the gravity mean vector.

**angleZgravityMean** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the angle between the Z axis vector and the gravity mean vector.

**Body acceleration std variables-time signals**

**time _ BodyAcc_std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration standard deviation of measurements in the X-axis direction.

**time _ BodyAcc _ std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration standard deviation of measurements in the Y-axis direction.

**time _ BodyAcc _ std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration standard deviation of measurements in the Z-axis direction.

**Gravity acceleration std variables-time signals**

**time _ GravityAcc_std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the gravity acceleration standard deviation of measurements in the X-axis direction.

**time _ GravityAcc _ std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the gravity acceleration standard deviation of measurements in the Y-axis direction.

**time _ GravityAcc _ std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the gravity acceleration standard deviation of measurements in the Z-axis direction.

**Body acceleration jerk std variables-time signals**

**time _ BodyAccJerk _ std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration jerk standard deviation of measurements derived from the body linear acceleration in the X-axis direction.

**time _ BodyAccJerk _ std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration jerk standard deviation of measurements derived from the body linear acceleration in the Y-axis direction.

**time _ BodyAccJerk _ std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body acceleration jerk standard deviation of measurements derived from the body linear acceleration in the Z-axis direction.

**Body angular velocity std variables-time signals**

**time _ BodyGyro_std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity standard deviation of measurements in the X-axis direction.

**time _ BodyGyro_std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity standard deviation of measurements in the Y-axis direction.

**time _ BodyGyro_std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity standard deviation of measurements in the Z-axis direction.

**Body angular velocity jerk std variables-time signals**

**time _ BodyGyroJerk _ std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity jerk standard deviation of measurements derived from the body angular velocity in the X-axis direction.

**time _ BodyGyroJerk _ std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity jerk standard deviation of measurements derived from the body angular velocity in the Y-axis direction.

**time _ BodyGyroJerk _ std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the time domain signal of the body angular velocity jerk standard deviation of measurements derived from the body angular velocity in the Z-axis direction.

**Magnitude std variables-time signals**

**time _ BodyAccMag _ std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional time domain signal of the body acceleration.

**time _ GravityAccMag _ std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional time domain signal of the gravity acceleration.

**time _ BodyAccJerkMag _ std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional time domain signal of the body acceleration jerk.

**time _ BodyGyroMag _ std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional time domain signal of the body angular velocity.

**time _ BodyGyroJerkMag _ std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional time domain signal of the body angular velocity jerk.

**Body acceleration std variables-frequency signals**

**freq _ BodyAcc _ std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration standard deviation of measurements in the X-axis direction.

**freq _ BodyAcc _ std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration standard deviation of measurements in the Y-axis direction.

**freq _ BodyAcc _ std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration standard deviation of measurements in the Z-axis direction.

**Body acceleration jerk std variables-frequency signals**

**freq _ BodyAccJerk _ std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk standard deviation of measurements derived from the body linear acceleration in the X-axis direction.

**freq _ BodyAccJerk _ std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk standard deviation of measurements derived from the body linear acceleration in the Y-axis direction.

**freq _ BodyAccJerk _ std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body acceleration jerk standard deviation of measurements derived from the body linear acceleration in the Z-axis direction.

**Body angular velocity std variables-frequency signals**

**freq _ BodyGyro_std _ X** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity standard deviation of measurements in the X-axis direction.

**freq _ BodyGyro_std _ Y** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity standard deviation of measurements in the Y-axis direction.

**freq _ BodyGyro_std _ Z** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the frequency domain signal of the body angular velocity standard deviation of measurements in the Z-axis direction.

**Magnitude std variables-frequency signals**

**freq _ BodyAccMag_std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional frequency domain signal of the body acceleration.

**freq _ BodyAccJerkMag_std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional frequency domain signal of the body acceleration jerk.

**freq _ BodyGyroMag_std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional frequency domain signal of the body angular velocity.

**freq _ BodyGyroJerkMag _ std** (numeric) (normalized, bounded within [-1,1]).
>Estimated average value of the magnitude standard deviations of the 3-dimensional frequency domain signal of the body angular velocity jerk.