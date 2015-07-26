#loading dplyr for later use

library(dplyr)

## Sets location of downloaded data
setwd("/Users/andrewwahl/Desktop/Coursera/Cleaning Data/UCI HAR Dataset/");

## Reads in features and activity label data sets
features <- read.table("features.txt");
activity <- read.table("activity_labels.txt");

#Names the columns of the activity data set
colnames(activity) <- c("activity_id","activity_type");

## Reads in test data sets
subject_test <- read.table("./test/subject_test.txt");
x_test <- read.table("./test/X_test.txt");
y_test <- read.table("./test/y_test.txt");

## Reads in training data sets
subject_train <- read.table("./train/subject_train.txt");
x_train <- read.table("./train/X_train.txt");
y_train <- read.table("./train/y_train.txt");

#Names the columns of all data sets
colnames(subject_train)="subject_id";
colnames(subject_test)="subject_id";
colnames(x_train)=features[,2];
colnames(x_test)=features[,2];
colnames(y_train)="activity_id";
colnames(y_test)="activity_id";

## Binds the test set together
test_set <- cbind(subject_test,y_test, x_test);

## Binds the training set together
train_set <- cbind(subject_train,y_train, x_train);

#Binds the test set with the training set
final_set <- rbind(test_set, train_set);

## Now select appropriate column names -- only those that have
## mean or standard deviation in them ("mean","std") and the activity and subject IDs

#first create vector of column names
column_names <- colnames(final_set);

#create vector to evaluate qualification of column names
name_vector <- grepl("subject",column_names) | grepl("activity",column_names) | grepl("mean",column_names) | grepl("std", column_names);

## subset only columns we want to keep

final_subset <- final_set[name_vector == TRUE];

## merge that set with the activities to give them their names
final_activity <- merge(activity,final_subset,by.x = "activity_id",by.y="activity_id",all=TRUE);

#Cleaning up a few of the variable names
colnames(final_activity)<- gsub("\\()","",colnames(final_activity));
colnames(final_activity)<- gsub("BodyBody","Body",colnames(final_activity));
colnames(final_activity)<- gsub("mean()","Mean",colnames(final_activity));
colnames(final_activity)<- gsub("std","StdDev",colnames(final_activity));

#Creates another data set that has averages across activity and subject (grouped by each)
final_df<- final_activity %>% group_by(activity_type,subject_id) %>% summarise_each(funs(mean));

#Writes the final data frame to another file in the directory named "final_data.txt"
write.table(final_df,"final_data.txt",row.name=FALSE)