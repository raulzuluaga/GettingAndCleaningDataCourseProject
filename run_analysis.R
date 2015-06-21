


## Step 01.Set working directory. Data must be on this path, inside a folder named 'UCI HAR Dataset' 
setwd("C:\\R\\CleaningDataAssigment")

## Step 02. Read the raw data from files into dataframes
fileActivityLabels <- read.table(".\\UCI HAR Dataset\\activity_labels.txt", header = FALSE)
fileFeatures <- read.table(".\\UCI HAR Dataset\\features.txt", header = FALSE)
testYActivityID <- read.table(".\\UCI HAR Dataset\\test\\y_test.txt", header = FALSE)
testSubjectID <- read.table(".\\UCI HAR Dataset\\test\\subject_test.txt", header = FALSE)
testXObservations <- read.table(".\\UCI HAR Dataset\\test\\X_test.txt", header = FALSE)
trainYActivityID <- read.table(".\\UCI HAR Dataset\\train\\y_train.txt", header = FALSE)
trainSubjectID <- read.table(".\\UCI HAR Dataset\\train\\subject_train.txt", header = FALSE)
trainXObservations <- read.table(".\\UCI HAR Dataset\\train\\X_train.txt", header = FALSE)

## Step 03. Obtain columns names for Mean and Standard deviation
## This step is perform earlier to only merge the data really needed in the process
columnsToProcessMean <- fileFeatures[grep("mean", fileFeatures$V2) , ]
columnsToProcessStd <- fileFeatures[grep("std", fileFeatures$V2) , ]
columnsToProcess <- rbind (columnsToProcessMean, columnsToProcessStd)

## Step 04. Rename colums before merge data, to avoid repeated columns names

names(fileActivityLabels)[names(fileActivityLabels)=="V1"] <- "ActivityId"
names(fileActivityLabels)[names(fileActivityLabels)=="V2"] <- "ActivityName"

names(testYActivityID)[names(testYActivityID)=="V1"] <- "ActivityId"
names(testSubjectID)[names(testSubjectID)=="V1"] <- "SubjectId"
names(trainYActivityID)[names(trainYActivityID)=="V1"] <- "ActivityId"
names(trainSubjectID)[names(trainSubjectID)=="V1"] <- "SubjectId"

names(testXObservations) = fileFeatures$V2
names(trainXObservations) = fileFeatures$V2

## Step 05. Merge selected data into one single dataframe
testUnifiedData <- cbind(testYActivityID, testSubjectID, testXObservations[ , columnsToProcess$V1 ] )
trainUnifiedData <- cbind(trainYActivityID, trainSubjectID, trainXObservations[ , columnsToProcess$V1 ] )
unifiedData <- rbind(testUnifiedData,trainUnifiedData)

## Step 06. Add descriptive activity names

unifiedData <- merge(fileActivityLabels,unifiedData,by="ActivityId")

## Step 07. Creation of a new tidy aggregated dataset
aggregatedData <-aggregate(unifiedData[, which(names(unifiedData) %in% columnsToProcess$V2)], 
                           by=list( ActivityId=unifiedData$ActivityId,
                                    ActivityName=unifiedData$ActivityName,
                                    SubjectId=unifiedData$SubjectId), 
                           FUN=mean, na.rm=TRUE)

write.table(aggregatedData, file="agregatedData.txt", row.names = FALSE)

newTidyData <- read.table(".\\agregatedData.txt", header = TRUE)
