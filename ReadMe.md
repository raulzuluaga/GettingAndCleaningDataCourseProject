==================================================================
Getting and Cleaning Data Course Project
Creating a Tidy Data set base on Human Activity Recognition Using Smartphones Dataset[Version 1.0]
==================================================================
Author: Raul Zuluaga [raulzuluaga@gmail.com]
==================================================================

The goal of this exercise is to create a tidy data set based on information collected in the Human Activity Recognition Using Smartphones Dataset

The raw data was created by:

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Università degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

The raw data can be obtained from: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

==================================================================
This analysis includes the following files:
==================================================================

- 'ReadMe.md'
- 'CodeBook.md': Data transformation steps and variable list with description.
- 'run_analysis.R': R language script for data transformation.
- 'agregatedData.txt': Tidy data set result.

==================================================================
Notes: 
==================================================================
- In order to run 'run_analysis.R':
-- Data files must be UNZIPPED.
-- Data files must preserve names and folder structure as they come in getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
-- Working directory should be reviewed in 'run_analysis.R' ## Step 01

==================================================================
License:
==================================================================
Use of this dataset in publications must be acknowledged by referencing:

Raw data:
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

Data processing:
Getting and Cleaning Data Course Project
Creating a Tidy Data set base on Human Activity Recognition Using Smartphones Dataset[Version 1.0]
Raul Zuluaga [raulzuluaga@gmail.com]
