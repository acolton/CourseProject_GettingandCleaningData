## Purpose
The goal of this script is to read in an untidy dataset from multiple files and combine them into one tidy dataset that is ready tor further analysis. 

## To Use
 1. Download the dataset to your working directory https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 
 
 2. type source("run_analysis.r") to load the script
 
 3. type get.tidyData() to run the script
 
After the script completes two data sets will open, tidyData and tidySummary

  - tidyData is the dataset required for steps 1-4 of the assignment
  
  - tidySummary is the dataset required for step 5, this data is also included in the assignment submission as a text file.

## Code Explaination
The basic steps included in the script are:

- Read Data Files - read data from six data files (X_test.txt, y_test.txt, subject_test.txt, X_train.txt, y_train.txt, subject_train.txt) and two files with information defining the data (features.txt, activity_labels.txt)

- Label columns with descriptive names - in this step information from the features.txt file is taken and applied to data sets as column names.  The ID and activityTypes columns are also labeled.

- Bind Data Sets - data is bound into two data sets testData (comprised of data from the X_test, y_test and subject_test files) and trainData (comprised of data from the X_train, y_train and subject_train files)

- Merge Train and Test Data sets - testData and trainData data sets are combined into one

- Extract measurements on mean and standard deviation - the dataset is filtered to remove all columns that aren't a standard deviation or mean.

- Clean up column names - column names are modified to remove parentheses and expand abbreviations to make the names more readable.  

- Map Activity Names to Activity types column - activity names from the activity_labels file are applied to the activityType column.

- Create a long version of the tidy dataset and create a new dataset called tidySummary which contains the average of each variable for each activity and subject. This dataset is then written to the file, tidySummary.txt

## Additional Info
For more information about what the data means see the CodeBook.md file
