    
    This project reads and cleans data from the Human Activity Recognition Using Smartphones Dataset v1.0.  
    
    The source data was produced by Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto, of the 
    Smartlab - Non Linear Complex Systems Laboratory.
    
    
    The source data describes experiments that were carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 
    
    For each record it is provided:
- Triaxial acceleration from the accelerometer (total acceleration) and the estimated body acceleration.
- Triaxial Angular velocity from the gyroscope. 
- A 561-feature vector with time and frequency domain variables. 
- Its activity label. 
- An identifier of the subject who carried out the experiment.
    
    The source dataset includes the following files:
- 'features_info.txt': Shows information about the variables used on the feature vector.
- 'features.txt': List of all features.
- 'activity_labels.txt': Links the class labels with their activity name.
- 'train/X_train.txt': Training set.
- 'train/y_train.txt': Training labels.
- 'test/X_test.txt': Test set.
- 'test/y_test.txt': Test labels.

The following files are available for the train and test data. Their descriptions are equivalent. 

- 'train/subject_train.txt': Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

- 'train/Inertial Signals/total_acc_x_train.txt': The acceleration signal from the smartphone accelerometer X axis in standard gravity units 'g'. Every row shows a 128 element vector. The same description applies for the 'total_acc_x_train.txt' and 'total_acc_z_train.txt' files for the Y and Z axis. 

- 'train/Inertial Signals/body_acc_x_train.txt': The body acceleration signal obtained by subtracting the gravity from the total acceleration. 

- 'train/Inertial Signals/body_gyro_x_train.txt': The angular velocity vector measured by the gyroscope for each window sample. The units are radians/second. 
    
    The data cleansing and tidying was performed by Fred Maples in June 2014, and outputs the mean and standard deviation
    files as follows:
    
    "timeBodyAcc-mean-X",   "timeBodyAcc-mean-Y",   "timeBodyAcc-mean-Z",
    "timeBodyAcc-StdDev-X",    "timeBodyAcc-StdDev-Y",    "timeBodyAcc-StdDev-Z",
    "timeGravityAcc-mean-X",   "timeGravityAcc-mean-Y",   "timeGravityAcc-mean-Z",
    "timeGravityAcc-StdDev-X",    "timeGravityAcc-StdDev-Y",    "timeGravityAcc-StdDev-Z",
    "timeBodyAccJerk-mean-X",   "timeBodyAccJerk-mean-Y", "timeBodyAccJerk-mean-Z",
    "timeBodyAccJerk-StdDev-X",    "timeBodyAccJerk-StdDev-Y",  "timeBodyAccJerk-StdDev-Z",
    "timeBodyGyro-mean-X",      "timeBodyGyro-mean-Y",    "timeBodyGyro-mean-Z",
    "timeBodyGyro-StdDev-X",       "timeBodyGyro-StdDev-Y",     "timeBodyGyro-StdDev-Z",
    "timeBodyGyroJerk-mean-X",  "timeBodyGyroJerk-mean-Y","timeBodyGyroJerk-mean-Z",
    "timeBodyGyroJerk-StdDev-X",   "timeBodyGyroJerk-StdDev-Y", "timeBodyGyroJerk-StdDev-Z",
    "timeBodyAccMag-mean",      "timeBodyAccMag-StdDev",
    "timeGravityAccMag-mean",   "timeGravityAccMag-StdDev",
    "tBodyAccJerkMag-mean",  "timeBodyAccJerkMag-StdDev",
    "timeBodyGyroMag-mean",     "timeBodyGyroMag-StdDev",
    "timeBodyGyroJerkMag-mean", "timeBodyGyroJerkMag-StdDev",
    "freqBodyAcc-mean-X",    "freqBodyAcc-mean-Y",   "freqBodyAcc-mean-Z",
    "freqBodyAcc-StdDev-X",     "freqBodyAcc-StdDev-Y",    "freqBodyAcc-StdDev-Z",
    "freqBodyAccJerk-mean-X","freqBodyAccJerk-mean-Y",   "freqBodyAccJerk-mean-Z",
    "freqBodyAccJerk-StdDev-X", "freqBodyAccJerk-std-Y",    "freqBodyAccJerk-StdDev-Z",
    "freqBodyGyro-mean-X",   "freqBodyGyro-mean-Y",   "freqBodyGyro-mean-Z",
    "freqBodyGyro-StdDev-X",    "freqBodyGyro-StdDev-Y",    "freqBodyGyro-StdDev-Z",
    "freqBodyAccMag-mean",   "freqBodyAccMag-StdDev",
    "freqBodyBodyAccJerkMag-mean",     "freqBodyBodyAccJerkMag-StdDev",
    "freqBodyBodyGyroMag-mean",        "freqBodyBodyGyroMag-StdDev",
    "freqBodyBodyGyroJerkMag-mean",    "freqBodyBodyGyroJerkMag-StdDev",
    "activityid", "subjectid"
