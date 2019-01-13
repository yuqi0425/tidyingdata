{\rtf1\ansi\ansicpg1252\cocoartf1561\cocoasubrtf600
{\fonttbl\f0\fnil\fcharset0 HelveticaNeue;}
{\colortbl;\red255\green255\blue255;\red27\green31\blue34;\red255\green255\blue255;\red10\green77\blue204;
\red70\green77\blue86;}
{\*\expandedcolortbl;;\cssrgb\c14118\c16078\c18039;\cssrgb\c100000\c100000\c100000;\cssrgb\c1176\c40000\c83922;
\cssrgb\c34510\c37647\c41176;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}.}{\leveltext\leveltemplateid1\'02\'00.;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{none\}}{\leveltext\leveltemplateid101\'00;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid2}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720\sl480\sa320\partightenfactor0

\f0\fs32 \cf2 \cb3 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 #Data#\cb1 \
\cb3 ##Data Set Information##\cb1 \
\cb3 Data is from a Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.\cb1 \
\cb3 The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.\cb1 \
\cb3 The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain.\cb1 \
\cb3 ###Link to the Original Data Set###\cb1 \
\pard\pardeftab720\sl480\sa320\partightenfactor0
{\field{\*\fldinst{HYPERLINK "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"}}{\fldrslt \cf4 \cb3 \strokec4 https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip}}\
\pard\pardeftab720\sl480\sa320\partightenfactor0
\cf2 \cb3 #Variables#\cb1 \
\cb3 ##Identifier##\cb1 \
\cb3 ###subject### This variable takes the values 1 to 30, each stand for one of the volunteers\cb1 \
\cb3 ###activity### This variable specifies what activity the subject was doing, it takes the following six values.\cb1 \
\cb3 WALKING WALKING_UPSTAIRS WALKING_DOWNSTAIRS SITTING STANDING LAYING\cb1 \
\cb3 ##Feature Variables (Average Measurement)##\cb1 \
\cb3 The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.\cb1 \
\cb3 Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).\cb1 \
\cb3 Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).\cb1 \
\cb3 These signals were used to estimate variables of the feature vector for each pattern:\cb1 \uc0\u8232 \cb3 '-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.\cb1 \
\cb3 ###The Feature Variables###\cb1 \
\cb3 The following 79 variables belong to this classs of variables, in each case the average measurement for each identifier (unique subject activity combination), across a number of measurements, is the value reported.\cb1 \
\cb3 "tBodyAccmeanX"\cb1 \uc0\u8232 \cb3 "tBodyAccmeanY"\cb1 \uc0\u8232 \cb3 "tBodyAccmeanZ"\cb1 \uc0\u8232 \cb3 "tBodyAccstdX"\cb1 \uc0\u8232 \cb3 "tBodyAccstdY"\cb1 \uc0\u8232 \cb3 "tBodyAccstdZ"\cb1 \uc0\u8232 \cb3 "tGravityAccmeanX"\cb1 \uc0\u8232 \cb3 "tGravityAccmeanY"\cb1 \uc0\u8232 \cb3 "tGravityAccmeanZ"\cb1 \uc0\u8232 \cb3 "tGravityAccstdX"\cb1 \uc0\u8232 \cb3 "tGravityAccstdY"\cb1 \uc0\u8232 \cb3 "tGravityAccstdZ"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkmeanX"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkmeanY"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkmeanZ"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkstdX"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkstdY"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkstdZ"\cb1 \uc0\u8232 \cb3 "tBodyGyromeanX"\cb1 \uc0\u8232 \cb3 "tBodyGyromeanY"\cb1 \uc0\u8232 \cb3 "tBodyGyromeanZ"\cb1 \uc0\u8232 \cb3 "tBodyGyrostdX"\cb1 \uc0\u8232 \cb3 "tBodyGyrostdY"\cb1 \uc0\u8232 \cb3 "tBodyGyrostdZ"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkmeanX"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkmeanY"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkmeanZ"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkstdX"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkstdY"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkstdZ"\cb1 \uc0\u8232 \cb3 "tBodyAccMagmean"\cb1 \uc0\u8232 \cb3 "tBodyAccMagstd"\cb1 \uc0\u8232 \cb3 "tGravityAccMagmean"\cb1 \uc0\u8232 \cb3 "tGravityAccMagstd"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkMagmean"\cb1 \uc0\u8232 \cb3 "tBodyAccJerkMagstd"\cb1 \uc0\u8232 \cb3 "tBodyGyroMagmean"\cb1 \uc0\u8232 \cb3 "tBodyGyroMagstd"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkMagmean"\cb1 \uc0\u8232 \cb3 "tBodyGyroJerkMagstd"\cb1 \uc0\u8232 \cb3 "fBodyAccmeanX"\cb1 \uc0\u8232 \cb3 "fBodyAccmeanY"\cb1 \uc0\u8232 \cb3 "fBodyAccmeanZ"\cb1 \uc0\u8232 \cb3 "fBodyAccstdX"\cb1 \uc0\u8232 \cb3 "fBodyAccstdY"\cb1 \uc0\u8232 \cb3 "fBodyAccstdZ"\cb1 \uc0\u8232 \cb3 "fBodyAccmeanFreqX"\cb1 \uc0\u8232 \cb3 "fBodyAccmeanFreqY"\cb1 \uc0\u8232 \cb3 "fBodyAccmeanFreqZ"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkmeanX"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkmeanY"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkmeanZ"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkstdX"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkstdY"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkstdZ"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkmeanFreqX"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkmeanFreqY"\cb1 \uc0\u8232 \cb3 "fBodyAccJerkmeanFreqZ"\cb1 \uc0\u8232 \cb3 "fBodyGyromeanX"\cb1 \uc0\u8232 \cb3 "fBodyGyromeanY"\cb1 \uc0\u8232 \cb3 "fBodyGyromeanZ"\cb1 \uc0\u8232 \cb3 "fBodyGyrostdX"\cb1 \uc0\u8232 \cb3 "fBodyGyrostdY"\cb1 \uc0\u8232 \cb3 "fBodyGyrostdZ"\cb1 \uc0\u8232 \cb3 "fBodyGyromeanFreqX"\cb1 \uc0\u8232 \cb3 "fBodyGyromeanFreqY"\cb1 \uc0\u8232 \cb3 "fBodyGyromeanFreqZ"\cb1 \uc0\u8232 \cb3 "fBodyAccMagmean"\cb1 \uc0\u8232 \cb3 "fBodyAccMagstd"\cb1 \uc0\u8232 \cb3 "fBodyAccMagmeanFreq"\cb1 \uc0\u8232 \cb3 "fBodyBodyAccJerkMagmean"\cb1 \uc0\u8232 \cb3 "fBodyBodyAccJerkMagstd"\cb1 \uc0\u8232 \cb3 "fBodyBodyAccJerkMagmeanFreq" "fBodyBodyGyroMagmean"\cb1 \uc0\u8232 \cb3 "fBodyBodyGyroMagstd"\cb1 \uc0\u8232 \cb3 "fBodyBodyGyroMagmeanFreq"\cb1 \uc0\u8232 \cb3 "fBodyBodyGyroJerkMagmean"\cb1 \uc0\u8232 \cb3 "fBodyBodyGyroJerkMagstd"\cb1 \uc0\u8232 \cb3 "fBodyBodyGyroJerkMagmeanFreq"\cb1 \
\cb3 #Transformations of the Original Data Set#\cb1 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl480\partightenfactor0
\ls1\ilvl0\cf2 \cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 The training and the test sets were merged to create one data set.\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Only the measurements on the mean and standard deviation for each measurement (including mean frequency measurements) were extracted. The result was saved into a new data set.\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Descriptive activity names from the activity labels in the original data set were used to name the activities in the data set\cb1 \
\ls1\ilvl0\cb3 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	4.	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Data set was labeled with appropriate descriptive variable names.\cb1 \
\pard\pardeftab720\sl480\partightenfactor0
\cf2 \cb3 -The first two columns were named "subject" and "activity", respectively. -"-" and "()" were removed from the remaining column names 5. Using the data set from 4, a second, independent tidy data set with the average of each variable for each activity and each subject was created and named tidy.txt.\cb1 \
\pard\pardeftab720\sl340\partightenfactor0

\fs28 \cf2 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sl300\partightenfactor0
\ls2\ilvl0
\fs24 \cf5 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 		\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec5 \uc0\u8232 
\fs28 \cf2 \strokec2 \
}