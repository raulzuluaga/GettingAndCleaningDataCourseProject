==================================================================
Getting and Cleaning Data Course Project
Creating a Tidy Data set base on Human Activity Recognition Using Smartphones Dataset[Version 1.0]
CODE BOOK
==================================================================
Author: Raul Zuluaga [raulzuluaga@gmail.com]
==================================================================

The goal of this exercise is to create a tidy data set based on information collected in the Human Activity Recognition Using Smartphones Dataset

==================================================================
Study design
==================================================================
The raw data was created by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The raw data can be obtained from 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The script to perform transformation expects unzipped data, with the original names and folder distribution as is provided inside the zip. 

==================================================================
agregatedData.txt Code book
==================================================================
It is a  space separated values txt file. The first row stores the column names. Each line is a row.

Variable Name: ActivityId
Position: 1
Description: Numeric code for Activity. Range from 1 to 6.
Data Type: Integer
Units: None

Variable Name: ActivityName
Position: 2
Description: Text description for Activity. Possible values: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING
Data Type: Text
Units: None

Variable Name: SubjectId
Position: 3
Description: Numeric code for Activity. Range from 1 to 30.
Data Type: Integer
Units: None

Variable Name: Mean and Standard deviation columns
Position: 4 to 82
Description: MEAN for columns containing  Mean and Standard deviation information for earch variable.
Data Type: Decimal
Units: It is depend on variable original description.
List of column names:
tBodyAcc-mean()-X               tBodyAcc-mean()-Y               tBodyAcc-mean()-Z              
tGravityAcc-mean()-X            tGravityAcc-mean()-Y            tGravityAcc-mean()-Z           
tBodyAccJerk-mean()-X           tBodyAccJerk-mean()-Y           tBodyAccJerk-mean()-Z          
tBodyGyro-mean()-X              tBodyGyro-mean()-Y              tBodyGyro-mean()-Z             
tBodyGyroJerk-mean()-X          tBodyGyroJerk-mean()-Y          tBodyGyroJerk-mean()-Z         
tBodyAccMag-mean()              tGravityAccMag-mean()           tBodyAccJerkMag-mean()         
tBodyGyroMag-mean()             tBodyGyroJerkMag-mean()         fBodyAcc-mean()-X              
fBodyAcc-mean()-Y               fBodyAcc-mean()-Z               fBodyAcc-meanFreq()-X          
fBodyAcc-meanFreq()-Y           fBodyAcc-meanFreq()-Z           fBodyAccJerk-mean()-X          
fBodyAccJerk-mean()-Y           fBodyAccJerk-mean()-Z           fBodyAccJerk-meanFreq()-X      
fBodyAccJerk-meanFreq()-Y       fBodyAccJerk-meanFreq()-Z       fBodyGyro-mean()-X             
fBodyGyro-mean()-Y              fBodyGyro-mean()-Z              fBodyGyro-meanFreq()-X         
fBodyGyro-meanFreq()-Y          fBodyGyro-meanFreq()-Z          fBodyAccMag-mean()             
fBodyAccMag-meanFreq()          fBodyBodyAccJerkMag-mean()      fBodyBodyAccJerkMag-meanFreq() 
fBodyBodyGyroMag-mean()         fBodyBodyGyroMag-meanFreq()     fBodyBodyGyroJerkMag-mean()    
fBodyBodyGyroJerkMag-meanFreq() tBodyAcc-std()-X                tBodyAcc-std()-Y               
tBodyAcc-std()-Z                tGravityAcc-std()-X             tGravityAcc-std()-Y            
tGravityAcc-std()-Z             tBodyAccJerk-std()-X            tBodyAccJerk-std()-Y           
tBodyAccJerk-std()-Z            tBodyGyro-std()-X               tBodyGyro-std()-Y              
tBodyGyro-std()-Z               tBodyGyroJerk-std()-X           tBodyGyroJerk-std()-Y          
tBodyGyroJerk-std()-Z           tBodyAccMag-std()               tGravityAccMag-std()           
tBodyAccJerkMag-std()           tBodyGyroMag-std()              tBodyGyroJerkMag-std()         
fBodyAcc-std()-X                fBodyAcc-std()-Y                fBodyAcc-std()-Z               
fBodyAccJerk-std()-X            fBodyAccJerk-std()-Y            fBodyAccJerk-std()-Z           
fBodyGyro-std()-X               fBodyGyro-std()-Y               fBodyGyro-std()-Z              
fBodyAccMag-std()               fBodyBodyAccJerkMag-std()       fBodyBodyGyroMag-std()         
fBodyBodyGyroJerkMag-std() 

==================================================================
Summary description
==================================================================
From raw data only Mean and Standard deviation columns are used.

The resulting data set was creating grouping data by Activiy, then by Subject. Within each group MEAN was calculated.

This was done following the assignment instructions.

==================================================================
Transformation Steps
==================================================================
 Step 01.Set working directory. Data must be on this path, inside a folder named 'UCI HAR Dataset' 
 Step 02. Read the raw data from files into dataframes
 Step 03. Obtain columns names for Mean and Standard deviation
 Step 04. Rename colums before merge data, to avoid repeated columns names
 Step 05. Merge selected data into one single dataframe
 Step 06. Add descriptive activity names
 Step 07. Creation of a new tidy aggregated dataset

