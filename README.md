Notes
==================

1. Script-sanitizer requires dplyr R package to run
2. Script expects to find UCI HAR Dataset within current directory
3. Script writes tidied data into UCI\_HAR\_tidied.txt
4. It reads datasets slowly since read.table is utilized as file reader(fread of data.table causes SIGSEGV under linux)

How it works
1. Read and prepare/enrich dataSet(readEnrichedDataSet function):
- Read dataSet(X\_test/X\_train), with correct columns(variables) names(comes from features.txt).
- Attach SUBJECT\_ID column(subject\_test.txt/subject\_train.txt)
- Attach ACTIVITY\_ID column(y\_test.txt/y\_train.txt)
- Attach ACTIVITY\_NAME column with corresponding activity names(activity_labels.txt)
2. Filter out unneeded columns, transform column names(extractMeasuresOfInterest function) 
- retain columns containing 'std()' or 'mean()'(but meanFreq dropped) in names.
- std() becomes standard\_deviation, mean() becomes mean\_value
3. Group dataSet by SUBJECT\_ID, ACTIVITY\_NAME, calculate mean values of remaining columns within groups.
4. Write processed dataSet into UCI\_HAR\_tidied.txt (180 observations of 68 variables (SUBJECT\_ID, ACTIVITY\_NAME, 66 of sensors measurements))
