Note: 
==================
1. Script-sanitizer requires dplyr package to run
2. Script expects to find UCI HAR Dataset within current directory
3. Script writes tidied data into UCI-HAR-tidied.txt

How it works

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement
```These are:
tBodyAcc-mean()-X
tBodyAcc-mean()-Y
tBodyAcc-mean()-Z
tGravityAcc-mean()-X
tGravityAcc-mean()-Y
tGravityAcc-mean()-Z
tBodyAccJerk-mean()-X
tBodyAccJerk-mean()-Y
tBodyAccJerk-mean()-Z
tBodyGyro-mean()-X
tBodyGyro-mean()-Y
tBodyGyro-mean()-Z
tBodyGyroJerk-mean()-X
tBodyGyroJerk-mean()-Y
tBodyGyroJerk-mean()-Z
tBodyAccMag-mean()
tGravityAccMag-mean()
tBodyAccJerkMag-mean()
tBodyGyroMag-mean()
tBodyGyroJerkMag-mean()
fBodyAcc-mean()-X
fBodyAcc-mean()-Y
fBodyAcc-mean()-Z
fBodyAccJerk-mean()-X
fBodyAccJerk-mean()-Y
fBodyAccJerk-mean()-Z
fBodyGyro-mean()-X
fBodyGyro-mean()-Y
fBodyGyro-mean()-Z
fBodyAccMag-mean()
fBodyBodyAccJerkMag-mean()
fBodyBodyGyroMag-mean()
fBodyBodyGyroJerkMag-mean()
```

for mean and
```tBodyAcc-std()-X
tBodyAcc-std()-Y
tBodyAcc-std()-Z
tGravityAcc-std()-X
tGravityAcc-std()-Y
tGravityAcc-std()-Z
tBodyAccJerk-std()-X
tBodyAccJerk-std()-Y
tBodyAccJerk-std()-Z
tBodyGyro-std()-X
tBodyGyro-std()-Y
tBodyGyro-std()-Z
tBodyGyroJerk-std()-X
tBodyGyroJerk-std()-Y
tBodyGyroJerk-std()-Z
tBodyAccMag-std()
tGravityAccMag-std()
tBodyAccJerkMag-std()
tBodyGyroMag-std()
tBodyGyroJerkMag-std()
fBodyAcc-std()-X
fBodyAcc-std()-Y
fBodyAcc-std()-Z
fBodyAccJerk-std()-X
fBodyAccJerk-std()-Y
fBodyAccJerk-std()-Z
fBodyGyro-std()-X
fBodyGyro-std()-Y
fBodyGyro-std()-Z
fBodyAccMag-std()
fBodyBodyAccJerkMag-std()
fBodyBodyGyroMag-std()
fBodyBodyGyroJerkMag-std()```
for standard deviation

3. Uses descriptive activity names to name the activities in the data set
These names come from activity_labels.txt to ACTIVITY_NAME column
4. Appropriately labels the data set with descriptive variable names.
std() becomes standard_deviation, mean() becomes mean_value, so variable names are:
```
tBodyAcc_standard_deviation-X
tBodyAcc_standard_deviation-Y
tBodyAcc_standard_deviation-Z
tGravityAcc_standard_deviation-X
tGravityAcc_standard_deviation-Y
tGravityAcc_standard_deviation-Z
tBodyAccJerk_standard_deviation-X
tBodyAccJerk_standard_deviation-Y
tBodyAccJerk_standard_deviation-Z
tBodyGyro_standard_deviation-X
tBodyGyro_standard_deviation-Y
tBodyGyro_standard_deviation-Z
tBodyGyroJerk_standard_deviation-X
tBodyGyroJerk_standard_deviation-Y
tBodyGyroJerk_standard_deviation-Z
tBodyAccMag_standard_deviation
tGravityAccMag_standard_deviation
tBodyAccJerkMag_standard_deviation
tBodyGyroMag_standard_deviation
tBodyGyroJerkMag_standard_deviation
fBodyAcc_standard_deviation-X
fBodyAcc_standard_deviation-Y
fBodyAcc_standard_deviation-Z
fBodyAccJerk_standard_deviation-X
fBodyAccJerk_standard_deviation-Y
fBodyAccJerk_standard_deviation-Z
fBodyGyro_standard_deviation-X
fBodyGyro_standard_deviation-Y
fBodyGyro_standard_deviation-Z
fBodyAccMag_standard_deviation
fBodyBodyAccJerkMag_standard_deviation
fBodyBodyGyroMag_standard_deviation
fBodyBodyGyroJerkMag_standard_deviation
```
and
```
tBodyAcc_mean_value-X
tBodyAcc_mean_value-Y
tBodyAcc_mean_value-Z
tGravityAcc_mean_value-X
tGravityAcc_mean_value-Y
tGravityAcc_mean_value-Z
tBodyAccJerk_mean_value-X
tBodyAccJerk_mean_value-Y
tBodyAccJerk_mean_value-Z
tBodyGyro_mean_value-X
tBodyGyro_mean_value-Y
tBodyGyro_mean_value-Z
tBodyGyroJerk_mean_value-X
tBodyGyroJerk_mean_value-Y
tBodyGyroJerk_mean_value-Z
tBodyAccMag_mean_value
tGravityAccMag_mean_value
tBodyAccJerkMag_mean_value
tBodyGyroMag_mean_value
tBodyGyroJerkMag_mean_value
fBodyAcc_mean_value-X
fBodyAcc_mean_value-Y
fBodyAcc_mean_value-Z
fBodyAccJerk_mean_value-X
fBodyAccJerk_mean_value-Y
fBodyAccJerk_mean_value-Z
fBodyGyro_mean_value-X
fBodyGyro_mean_value-Y
fBodyGyro_mean_value-Z
fBodyAccMag_mean_value
fBodyBodyAccJerkMag_mean_value
fBodyBodyGyroMag_mean_value
fBodyBodyGyroJerkMag_mean_value
```

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Final dataset has  180 observations of 68 variables (SUBJECT_ID, ACTIVITY_NAME, sensors);


cat features.txt | awk '{print $2}' | grep std | sed 's@std@standard_deviation@' | sed "s@()@@" | sed 's@-@_@'
cat features.txt | awk '{print $2}' | grep mean | grep -v meanFreq | sed 's@mean@mean_value@' | sed "s@()@@" | sed 's@-@_@'