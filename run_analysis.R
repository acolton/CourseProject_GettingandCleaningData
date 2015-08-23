library(dplyr)
library(reshape2)

get.tidyData <- function(){
  
  # Read Data Files
  xtest <- read.table("UCI HAR Dataset/test/X_test.txt")
  ytest <- read.table("UCI HAR Dataset/test/y_test.txt")
  subjectTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
  
  xtrain <- read.table("UCI HAR Dataset/train/X_train.txt")
  ytrain <- read.table("UCI HAR Dataset/train/y_train.txt")
  subjectTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
  
  features <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)
  features <- features$V2
  activities <- read.table("UCI HAR Dataset/activity_labels.txt", stringsAsFactors = FALSE)
  activities <- activities$V2
  
  # Label columns with descriptive names
  colnames(xtest) <- features
  colnames(ytest) <- c("activityType")
  colnames(subjectTest) <- c("ID")
  
  colnames(xtrain) <- features
  colnames(ytrain) <- c("activityType")
  colnames(subjectTrain) <- c("ID")
  
  # Bind Data Sets
  testData <- cbind(subjectTest, ytest, xtest)
  trainData <- cbind(subjectTrain, ytrain, xtrain)
  
  # Merge Train and Test Datasets
  tidyData <- rbind(testData, trainData)
  
  # Extract measurements on mean and standard deviation
  toMatch <- c("\\<std()\\>", "\\<mean()\\>", "\\<activityType\\>", "\\<ID\\>")
  matches <- grepl(paste(toMatch, collapse = "|"), colnames(tidyData))
  tidyData <- tidyData[matches]
  
  # Clean up column names
  colnames(tidyData) <- gsub("BodyBody", "Body", colnames(tidyData))
  colnames(tidyData) <- gsub("Acc", "Accelerometer", colnames(tidyData))
  colnames(tidyData) <- gsub("Mag", "Magnitude", colnames(tidyData))
  colnames(tidyData) <- gsub("Gyro", "Gyroscopic", colnames(tidyData))
  colnames(tidyData) <- gsub("-", "_", colnames(tidyData))
  colnames(tidyData) <- gsub("\\()", "", colnames(tidyData))
  
  # Map Activity Names to Activity types column
  tidyData$activityType <- activities[tidyData$activityType]
  tidyData <- arrange(tidyData, ID, activityType)
  
  # Create new data set with average of each variable for each activity and each subject
  # and write to file
  
  longData <- melt(tidyData, id=c("ID", "activityType"))
  tidySummary <- dcast(longData, ID + activityType~variable, mean)
  #write.table(tidySummary, "tidySummary.txt", row.name = FALSE)
  View(tidySummary)
  View(tidyData)
}