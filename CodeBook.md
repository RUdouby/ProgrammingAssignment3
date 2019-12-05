###################################################

Codebook for Programming Assignment of Course 3: Getting and Cleaning Data

###################################################

The original data consisted of six data files that displayed the measurements of smartphone censors while
a participant was engaged in a particular activity. The six data files are subject_train, X_train,
y_train, subject_test, X_test, y_test. They are all text files.

The files are split between the training population and test population. The "subject" files provide
the participant number for each observation. The "y" files provide the activity engaged for each
observation. The "X" files provide the actual measurements of the smartwatch censors.

In addition to the data files, two additional text files were read into RStudio. The first file,
called "features", provides the variable names for the "X" file measurements. The second file, called
"activity_labels", provides the key for the activity movements of each measurement.

After reading in the data, the first transformation is to combine the columns of the test and train
data frames in following order: subject, y, X. Combine the test and train data frames into a single
dataframe using rbind. Establish a variable names vector using the character elements: "subject",
"activity_labels", and all the labels from the "feature" file.

Set the column names of the merged data equal to the variable name vector previously made. Label the activity
key loaded into RStudio with: "activityno" and "activitytype". Merge the data frame with the activity key by
matching "activity_labels" with "activityno".

Subset the data by pulling out data columns whose headers contain the words: "activity", "subject", "mean",
and "std". Remove data columns with headers "Freq" since these are not necessary for the final dataset.
Also the "activityno" column since it the numerical duplicate of the "activitytype" column.

To organize the data by subject and activity type use the melt function with "subject" and "activitytype"
as the IDs. Then use the dcast function with mean to get the average of each variable based on subject + 
activity type.

Finally write the table to a text file with the row names parameter set to false.

#######################################################

Here are the final data variables:

"subject"
"activitytype"
"tBodyAcc-mean()-X"          
"tBodyAcc-mean()-Y"
"tBodyAcc-mean()-Z"
"tBodyAcc-std()-X"           
"tBodyAcc-std()-Y"
"tBodyAcc-std()-Z"
"tGravityAcc-mean()-X"       
"tGravityAcc-mean()-Y"
"tGravityAcc-mean()-Z"
"tGravityAcc-std()-X"        
"tGravityAcc-std()-Y"
"tGravityAcc-std()-Z"
"tBodyAccJerk-mean()-X"      
"tBodyAccJerk-mean()-Y"
"tBodyAccJerk-mean()-Z"
"tBodyAccJerk-std()-X"       
"tBodyAccJerk-std()-Y"
"tBodyAccJerk-std()-Z"
"tBodyGyro-mean()-X"         
"tBodyGyro-mean()-Y"
"tBodyGyro-mean()-Z"
"tBodyGyro-std()-X"          
"tBodyGyro-std()-Y"
"tBodyGyro-std()-Z"
"tBodyGyroJerk-mean()-X"     
"tBodyGyroJerk-mean()-Y"
"tBodyGyroJerk-mean()-Z"
"tBodyGyroJerk-std()-X"      
"tBodyGyroJerk-std()-Y"
"tBodyGyroJerk-std()-Z"
"tBodyAccMag-mean()"         
"tBodyAccMag-std()"
"tGravityAccMag-mean()"
"tGravityAccMag-std()"       
"tBodyAccJerkMag-mean()"
"tBodyAccJerkMag-std()"
"tBodyGyroMag-mean()"        
"tBodyGyroMag-std()"
"tBodyGyroJerkMag-mean()"
"tBodyGyroJerkMag-std()"     
"fBodyAcc-mean()-X"
"fBodyAcc-mean()-Y"
"fBodyAcc-mean()-Z"          
"fBodyAcc-std()-X"
"fBodyAcc-std()-Y"
"fBodyAcc-std()-Z"           
"fBodyAccJerk-mean()-X"
"fBodyAccJerk-mean()-Y"
"fBodyAccJerk-mean()-Z"      
"fBodyAccJerk-std()-X"
"fBodyAccJerk-std()-Y"
"fBodyAccJerk-std()-Z"       
"fBodyGyro-mean()-X"
"fBodyGyro-mean()-Y"
"fBodyGyro-mean()-Z"         
"fBodyGyro-std()-X"
"fBodyGyro-std()-Y"
"fBodyGyro-std()-Z"          
"fBodyAccMag-mean()"
"fBodyAccMag-std()"
"fBodyBodyAccJerkMag-mean()" 
"fBodyBodyAccJerkMag-std()"
"fBodyBodyGyroMag-mean()"
"fBodyBodyGyroMag-std()"     
"fBodyBodyGyroJerkMag-mean()"
"fBodyBodyGyroJerkMag-std()"
