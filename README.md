getting-cleaning-project
========================
# J. Fred Maples (run_analysis.R)
# Getting and Cleaning Data coursera

Assumes the data was already unzipped, read the various data files

Combine the training and test data frames by row

Only include the specific columns we want

Appropriately label the data set with descriptive activity names. 

Create 180 rows as average of each activityid-subjectid combination via aggregate function

Write the 180 rows to CleanedData.txt as tab separated, and exclude row names
