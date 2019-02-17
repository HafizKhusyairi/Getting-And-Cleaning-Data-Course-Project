# Code book for Coursera *Getting and Cleaning Data* course project

This is the code book accompanying the `tidydata.txt` file. This code book consists of two sections: Variables and Data Cleaning Process. The Data Cleaning section explains any transformations or work that performed to get the `tidydata.txt` from the raw data.

See the readme file for the information about the dataset and its collection.

## Variables
Here are the list of 81 variables in the dataset:

### Identifiers

`SubjectID`

Identifies the subject who performed the activity for each window sample. Its range is from 1 to 30. 

`ActivityLabel`

Identifies the activity of the subject. It has 6 possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING.

### Average of measurements

Average and standard deviation time of body acceleration in the X, Y and Z axis:

 [1] "timeBodyAccelerometer-mean-Xaxis"              
 [2] "timeBodyAccelerometer-mean-Yaxis"              
 [3] "timeBodyAccelerometer-mean-Zaxis"              
 [4] "timeBodyAccelerometer-std-Xaxis"               
 [5] "timeBodyAccelerometer-std-Yaxis"               
 [6] "timeBodyAccelerometer-std-Zaxis"               
 
 Average and standard deviation time of gravity acceleration in the X, Y and Z axis:
 
 [7] "timeGravityAccelerometer-mean-Xaxis"           
 [8] "timeGravityAccelerometer-mean-Yaxis"           
 [9] "timeGravityAccelerometer-mean-Zaxis"           
[10] "timeGravityAccelerometer-std-Xaxis"            
[11] "timeGravityAccelerometer-std-Yaxis"            
[12] "timeGravityAccelerometer-std-Zaxis"     

Average and standard deviation time of body acceleration jerk in the X, Y and Z axis:

[13] "timeBodyAccelerometerJerk-mean-Xaxis"          
[14] "timeBodyAccelerometerJerk-mean-Yaxis"          
[15] "timeBodyAccelerometerJerk-mean-Zaxis"          
[16] "timeBodyAccelerometerJerk-std-Xaxis"           
[17] "timeBodyAccelerometerJerk-std-Yaxis"           
[18] "timeBodyAccelerometerJerk-std-Zaxis" 

Average and standard deviation time body angular velocity in the X, Y and Z axis:

[19] "timeBodyGyroscope-mean-Xaxis"                  
[20] "timeBodyGyroscope-mean-Yaxis"                  
[21] "timeBodyGyroscope-mean-Zaxis"                  
[22] "timeBodyGyroscope-std-Xaxis"                   
[23] "timeBodyGyroscope-std-Yaxis"                   
[24] "timeBodyGyroscope-std-Zaxis" 

Average and standard deviation time body angular velocity jerk in the X, Y and Z axis:

[25] "timeBodyGyroscopeJerk-mean-Xaxis"              
[26] "timeBodyGyroscopeJerk-mean-Yaxis"              
[27] "timeBodyGyroscopeJerk-mean-Zaxis"              
[28] "timeBodyGyroscopeJerk-std-Xaxis"               
[29] "timeBodyGyroscopeJerk-std-Yaxis"               
[30] "timeBodyGyroscopeJerk-std-Zaxis"  

Average and standard deviation of magnitude of body and gravity acceleration, body acceleration jerk, body angular velocity, body angular velocity jerk :

31] "timeBodyAccelerometerMag-mean"                 
[32] "timeBodyAccelerometerMag-std"                  
[33] "timeGravityAccelerometerMag-mean"              
[34] "timeGravityAccelerometerMag-std"               
[35] "timeBodyAccelerometerJerkMag-mean"             
[36] "timeBodyAccelerometerJerkMag-std"              
[37] "timeBodyGyroscopeMag-mean"                     
[38] "timeBodyGyroscopeMag-std"                      
[39] "timeBodyGyroscopeJerkMag-mean"                 
[40] "timeBodyGyroscopeJerkMag-std"     

Similar to above but in frequency-domain:

[41] "frequencyBodyAccelerometer-mean-Xaxis"         
[42] "frequencyBodyAccelerometer-mean-Yaxis"         
[43] "frequencyBodyAccelerometer-mean-Zaxis"         
[44] "frequencyBodyAccelerometer-std-Xaxis"          
[45] "frequencyBodyAccelerometer-std-Yaxis"          
[46] "frequencyBodyAccelerometer-std-Zaxis"          
[47] "frequencyBodyAccelerometer-meanFreq-Xaxis"     
[48] "frequencyBodyAccelerometer-meanFreq-Yaxis"     
[49] "frequencyBodyAccelerometer-meanFreq-Zaxis"     
[50] "frequencyBodyAccelerometerJerk-mean-Xaxis"     
[51] "frequencyBodyAccelerometerJerk-mean-Yaxis"     
[52] "frequencyBodyAccelerometerJerk-mean-Zaxis"     
[53] "frequencyBodyAccelerometerJerk-std-Xaxis"      
[54] "frequencyBodyAccelerometerJerk-std-Yaxis"      
[55] "frequencyBodyAccelerometerJerk-std-Zaxis"      
[56] "frequencyBodyAccelerometerJerk-meanFreq-Xaxis" 
[57] "frequencyBodyAccelerometerJerk-meanFreq-Yaxis" 
[58] "frequencyBodyAccelerometerJerk-meanFreq-Zaxis" 
[59] "frequencyBodyGyroscope-mean-Xaxis"             
[60] "frequencyBodyGyroscope-mean-Yaxis"             
[61] "frequencyBodyGyroscope-mean-Zaxis"             
[62] "frequencyBodyGyroscope-std-Xaxis"              
[63] "frequencyBodyGyroscope-std-Yaxis"              
[64] "frequencyBodyGyroscope-std-Zaxis"              
[65] "frequencyBodyGyroscope-meanFreq-Xaxis"         
[66] "frequencyBodyGyroscope-meanFreq-Yaxis"         
[67] "frequencyBodyGyroscope-meanFreq-Zaxis"         
[68] "frequencyBodyAccelerometerMag-mean"            
[69] "frequencyBodyAccelerometerMag-std"             
[70] "frequencyBodyAccelerometerMag-meanFreq"        
[71] "frequencyBodyBodyAccelerometerJerkMag-mean"    
[72] "frequencyBodyBodyAccelerometerJerkMag-std"     
[73] "frequencyBodyBodyAccelerometerJerkMag-meanFreq"
[74] "frequencyBodyBodyGyroscopeMag-mean"            
[75] "frequencyBodyBodyGyroscopeMag-std"             
[76] "frequencyBodyBodyGyroscopeMag-meanFreq"        
[77] "frequencyBodyBodyGyroscopeJerkMag-mean"        
[78] "frequencyBodyBodyGyroscopeJerkMag-std"         
[79] "frequencyBodyBodyGyroscopeJerkMag-meanFreq"

# Data Cleaning Process

The data for the project is sourced from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).

Then the data is transformed as follows:

1. The training and test sets were merged to create one data set.
1. The variables containing the mean and standard deviation were extracted for each measurements.
1. Descriptive activity names are used to name the activities in the data set.
1. The variable names were labelled with descriptive variable names by:
	- Removing the special character `()`
	- Substituting initial `f` and `t` with `frequency` and `time` respectively.
	- Substituting `Acc`, `Gyro`, `Mag`, `Freq`, `mean`, and `std` with `Accelerometer`, `Gyroscope`, `Magnitude`, `Frequency`, `Mean`, and `StandardDeviation` respectively.
1. A second, independent tidy data set with the average of each variable for each activity and each subject was created.

The above transformations were implemented in the `run_analysis.R` script.
