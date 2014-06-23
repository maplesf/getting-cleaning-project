# J. Fred Maples (run_analysis.R)
# Getting and Cleaning Data coursera

# assumes the data was already unzipped
setwd("/users/fred/downloads/getdata-projectfiles-UCI HAR Dataset")

# Read the various data files
features <- read.table("./features.txt", header=FALSE)

subjecttrain <- read.table("train/subject_train.txt")
xtrain <- read.table("train/X_train.txt")
ytrain <- read.table("train/y_train.txt")
traindata <- cbind(xtrain, ytrain, subjecttrain)

subjecttest <- read.table("test/subject_test.txt")
xtest <- read.table("./test/X_test.txt")
ytest <- read.table("./test/y_test.txt")
testdata <- cbind(xtest, ytest, subjecttest)

merged <- rbind(traindata,testdata)

merged <- merged[,c(1,2,3,4,5,6,
                    41,42,43,44,45,46,
                    81,82,83,84,85,86,
                    121,122,123,124,125,126,
                    161,162,163,164,165,166,
                    201,202,214,215,227,228,
                    240,241,253,254,266,267,268,
                    269,270,271,
                    345,346,347,348,349,350,
                    424,425,426,427,428,429,
                    503,504,516,517,529,530,542,543,562,563)
                  ]
# 4. Appropriately label the data set with descriptive activity names. 
colnames(merged) <- c(
    "timeBodyAcc-mean-X",   "timeBodyAcc-mean-Y",   "timeBodyAcc-mean-Z",
    "timeBodyAcc-StdDev-X",    "timeBodyAcc-StdDev-Y",    "timeBodyAcc-StdDev-Z",
    "timeGravityAcc-mean-X",   "timeGravityAcc-mean-Y",   "timeGravityAcc-mean-Z",
    "timeGravityAcc-StdDev-X",    "timeGravityAcc-StdDev-Y",    "timeGravityAcc-StdDev-Z",
    "timeBodyAccJerk-mean-X",   "timeBodyAccJerk-mean-Y", "timeBodyAccJerk-mean-Z",
    "timeBodyAccJerk-StdDev-X",    "timeBodyAccJerk-StdDev-Y",  "timeBodyAccJerk-StdDev-Z",
    "timeBodyGyro-mean-X",      "timeBodyGyro-mean-Y",    "timeBodyGyro-mean-Z",
    "timeBodyGyro-StdDev-X",       "timeBodyGyro-StdDev-Y",     "timeBodyGyro-StdDev-Z",
    "timeBodyGyroJerk-mean-X",  "timeBodyGyroJerk-mean-Y","timeBodyGyroJerk-mean-Z",
    "timeBodyGyroJerk-StdDev-X",   "timeBodyGyroJerk-StdDev-Y", "timeBodyGyroJerk-StdDev-Z",
    "timeBodyAccMag-mean",      "timeBodyAccMag-StdDev",
    "timeGravityAccMag-mean",   "timeGravityAccMag-StdDev",
    "tBodyAccJerkMag-mean",  "timeBodyAccJerkMag-StdDev",
    "timeBodyGyroMag-mean",     "timeBodyGyroMag-StdDev",
    "timeBodyGyroJerkMag-mean", "timeBodyGyroJerkMag-StdDev",
    "freqBodyAcc-mean-X",    "freqBodyAcc-mean-Y",   "freqBodyAcc-mean-Z",
    "freqBodyAcc-StdDev-X",     "freqBodyAcc-StdDev-Y",    "freqBodyAcc-StdDev-Z",
    "freqBodyAccJerk-mean-X","freqBodyAccJerk-mean-Y",   "freqBodyAccJerk-mean-Z",
    "freqBodyAccJerk-StdDev-X", "freqBodyAccJerk-std-Y",    "freqBodyAccJerk-StdDev-Z",
    "freqBodyGyro-mean-X",   "freqBodyGyro-mean-Y",   "freqBodyGyro-mean-Z",
    "freqBodyGyro-StdDev-X",    "freqBodyGyro-StdDev-Y",    "freqBodyGyro-StdDev-Z",
    "freqBodyAccMag-mean",   "freqBodyAccMag-StdDev",
    "freqBodyBodyAccJerkMag-mean",     "freqBodyBodyAccJerkMag-StdDev",
    "freqBodyBodyGyroMag-mean",        "freqBodyBodyGyroMag-StdDev",
    "freqBodyBodyGyroJerkMag-mean",    "freqBodyBodyGyroJerkMag-StdDev",
    "activityid", "subjectid"
)

# create 180 rows as average of each activityid-subjectid combination
tidydata <- aggregate(merged[,names(merged) != c('activityid','subjectid')],by=list(activityid=merged$activityid, subjectid=merged$subjectid), mean)

write.table(tidydata,file="./CleanedData.txt", sep="\t", row.names=FALSE)
