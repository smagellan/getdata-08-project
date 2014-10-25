Notes: 
==================
1. Script-sanitizer requires dplyr R package to run
2. Script expects to find UCI HAR Dataset within current directory
3. Script writes tidied data into UCI\_HAR\_tidied.txt

How it works

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement
3. Uses descriptive activity names to name the activities in the data set.
These names come from activity\_labels.txt to ACTIVITY\_NAME column
4. Appropriately labels the data set with descriptive variable names.
These names come from features.txt. Extra transformation are applied: std() becomes standard\_deviation, mean() becomes mean\_value.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
Final dataset has  180 observations of 68 variables (SUBJECT\_ID, ACTIVITY\_NAME, 66 of sensors measurements);
