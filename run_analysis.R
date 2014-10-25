library(dplyr)

#reads dataset. Assigns human-readable names to columns. 
#Attaches subject ID(SUBJECT_ID), activity ID(ACTIVITY_ID) 
#and corresponding activity name(ACTIVITY_NAME, but depends on providedactivityNamesTable ) columns.
#dataSetFilename - filename of raw dataset. (i.e. no column names)
#variableNamesVector - vector of corresponding column names
#activityIDsFilename - filename of activity id column file
#activityNamesTable mapping "activity id" ==> "activity name". activity id must be named "ID".
#subjectIDColumnFilename subject ID column filename
#returns table with human readable columns

readEnrichedDataSet <- function(dataSetFilename, variableNamesVector, activityIDsFilename, activityNamesTable, subjectIDColumnFilename){
    activityIDColumn <- read.table(activityIDsFilename, col.names=c("ACTIVITY_ID"));
    subjectIDColumn <- read.table(subjectIDColumnFilename, col.names=c("SUBJECT_ID"));
    #fread causes SIGSEGV. read.table works(slow).
    #dt <- fread(dataSetFilename, header = FALSE, stringsAsFactors=FALSE);
    #names(dt) <- variableNamesVector;
    dt <- read.table(dataSetFilename, col.names=variableNamesVector);
    dt <- cbind(activityIDColumn, subjectIDColumn, dt);
    dt <- merge(dt, activityNamesTable, by.x = "ACTIVITY_ID", by.y = "ID");
    dt;
}


extractMeasuresOfInterest <- function(dataSet){
    dt <- select(dataSet, 
                 one_of("SUBJECT_ID", "ACTIVITY_NAME"), matches("(std|mean)", ignore.case = FALSE), 
                 -contains("meanFreq"));
    #names(dt) <- sub("\\.+$", "", names(dt));
    #names(dt) <- sub("\\.+", "_", names(dt));
    dt;
}


collapseToGroups <- function(dataSet){
    dt <- aggregate(select(dataSet, -SUBJECT_ID, -ACTIVITY_NAME), 
                    by=list(dataSet$SUBJECT_ID, dataSet$ACTIVITY_NAME), 
                    FUN=mean);
    #restore names of groups
    names(dt)[1:2] <- c("SUBJECT_ID", "ACTIVITY_NAME");
    dt;
}


TEST_DATASET_FILE <- "UCI HAR Dataset/test/X_test.txt";
TEST_ACTIVITY_IDS_FILE <- "UCI HAR Dataset/test/y_test.txt";
TEST_SUBJECTID_FILENAME <- "UCI HAR Dataset/test/subject_test.txt";

TRAIN_DATASET_FILE <- "UCI HAR Dataset/train/X_train.txt";
TRAIN_ACTIVITY_IDS_FILE <- "UCI HAR Dataset/train/y_train.txt";
TRAIN_SUBJECTID_FILENAME <- "UCI HAR Dataset/train/subject_train.txt";

VARIABLES_NAMES_FILE <- "UCI HAR Dataset/features.txt";
ACTIVITY_NAMES_FILE <- "UCI HAR Dataset/activity_labels.txt";


activityNamesTable <- read.table(ACTIVITY_NAMES_FILE, col.names = c("ID", "ACTIVITY_NAME"));
variableNames      <- read.table(VARIABLES_NAMES_FILE, as.is=TRUE)[, 2];
variableNames      <- gsub("\\(\\)", "", variableNames);
variableNames      <- gsub("-", "_", variableNames);

cat("reading test dataset\n");
testDataSet <- readEnrichedDataSet(TEST_DATASET_FILE, variableNames, TEST_ACTIVITY_IDS_FILE, activityNamesTable, TEST_SUBJECTID_FILENAME);
cat("reading train dataset\n");
trainDataSet <- readEnrichedDataSet(TRAIN_DATASET_FILE, variableNames, TRAIN_ACTIVITY_IDS_FILE, activityNamesTable, TRAIN_SUBJECTID_FILENAME);
cat("joining datasets into big one\n");
tidyDataSet <- rbind(extractMeasuresOfInterest(testDataSet), extractMeasuresOfInterest(trainDataSet));
cat("grouping by subject and activity, calculating mean values\n");
tidyDataSet <- collapseToGroups(tidyDataSet);

cat("writing sanitized data into tidyDataSet.txt\n");
write.table(tidyDataSet, file="tidyDataSet.txt", row.name=FALSE);