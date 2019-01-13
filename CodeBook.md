# Data

## Data Set Information

Data is from a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.

### Link to the Original Data Set

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

# Variables

## Identifying Variables

### subject 
This variable takes the values 1 to 30, each stand for one of the volunteers 

### activity
This variable specifies what activity the subject was doing, it takes the following six values. 

WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

## Feature Variables (Average Measurement)

### Description of Variables
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

### The Feature Variables

The following 79 variables belong to this classs of variables, in each case the average measurement for each identifier (unique subject activity combination), across a number of measurements, is the value reported. Please see section above for a more detailed description of what each variables stands for. 

"tBodyAccmeanX"               
"tBodyAccmeanY"                
"tBodyAccmeanZ"                
"tBodyAccstdX"                
"tBodyAccstdY"                 
"tBodyAccstdZ"                 
"tGravityAccmeanX"            
"tGravityAccmeanY"             
"tGravityAccmeanZ"             
"tGravityAccstdX"             
"tGravityAccstdY"              
"tGravityAccstdZ"              
"tBodyAccJerkmeanX"           
"tBodyAccJerkmeanY"            
"tBodyAccJerkmeanZ"            
"tBodyAccJerkstdX"            
"tBodyAccJerkstdY"             
"tBodyAccJerkstdZ"             
"tBodyGyromeanX"              
"tBodyGyromeanY"               
"tBodyGyromeanZ"               
"tBodyGyrostdX"               
"tBodyGyrostdY"                
"tBodyGyrostdZ"                
"tBodyGyroJerkmeanX"          
"tBodyGyroJerkmeanY"           
"tBodyGyroJerkmeanZ"           
"tBodyGyroJerkstdX"           
"tBodyGyroJerkstdY"            
"tBodyGyroJerkstdZ"            
"tBodyAccMagmean"             
"tBodyAccMagstd"              
"tGravityAccMagmean"           
"tGravityAccMagstd"           
"tBodyAccJerkMagmean"          
"tBodyAccJerkMagstd"           
"tBodyGyroMagmean"            
"tBodyGyroMagstd"              
"tBodyGyroJerkMagmean"         
"tBodyGyroJerkMagstd"         
"fBodyAccmeanX"               
"fBodyAccmeanY"                
"fBodyAccmeanZ"               
"fBodyAccstdX"                 
"fBodyAccstdY"                 
"fBodyAccstdZ"                
"fBodyAccmeanFreqX"            
"fBodyAccmeanFreqY"            
"fBodyAccmeanFreqZ"           
"fBodyAccJerkmeanX"            
"fBodyAccJerkmeanY"            
"fBodyAccJerkmeanZ"           
"fBodyAccJerkstdX"             
"fBodyAccJerkstdY"             
"fBodyAccJerkstdZ"            
"fBodyAccJerkmeanFreqX"        
"fBodyAccJerkmeanFreqY"        
"fBodyAccJerkmeanFreqZ"       
"fBodyGyromeanX"               
"fBodyGyromeanY"               
"fBodyGyromeanZ"              
"fBodyGyrostdX"                
"fBodyGyrostdY"                
"fBodyGyrostdZ"               
"fBodyGyromeanFreqX"           
"fBodyGyromeanFreqY"           
"fBodyGyromeanFreqZ"          
"fBodyAccMagmean"              
"fBodyAccMagstd"               
"fBodyAccMagmeanFreq"         
"fBodyBodyAccJerkMagmean"      
"fBodyBodyAccJerkMagstd"       
"fBodyBodyAccJerkMagmeanFreq" 
"fBodyBodyGyroMagmean"         
"fBodyBodyGyroMagstd"          
"fBodyBodyGyroMagmeanFreq"    
"fBodyBodyGyroJerkMagmean"     
"fBodyBodyGyroJerkMagstd"      
"fBodyBodyGyroJerkMagmeanFreq"
 
# Transformations of the Original Data Set

1. The training and the test sets were merged to create one data set.
2. Only the measurements on the mean and standard deviation for each measurement (including mean frequency measurements) were extracted. The result was saved into a new data set. 
3. Descriptive activity names from the activity labels in the original data set were used to name the activities in the data set
4. Data set was labeled with appropriate descriptive variable names.

-The first two columns were named "subject" and "activity", respectively. 
-"-" and "()" were removed from the remaining column names 
5. Using the data set from 4, a second, independent tidy data set with the average of each variable for each activity and each subject was created and named tidy.txt. 
