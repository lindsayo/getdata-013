## R Script to run the steps described in getdata-013
## Johns-Hopkins/Coursera Getting and Cleaning Data course project

## Set working directory to current space
# this assumes the data are kept in a sibling directory to this run_analysis.R file
setwd('.')


# Step 1
# Merges the training and the test sets to create one data set.
# Make activity label data frame
###############################################################################

y_test <- read.table('../UCI HAR Dataset/test/y_test.txt')
y_train <- read.table('../UCI HAR Dataset/train/y_train.txt')

# Merge y_test and y_train into y_merged
y_merged <- rbind(y_test,y_train)

x_train <- read.table("../UCI HAR Dataset/train/X_train.txt")
x_test <- read.table("../UCI HAR Dataset/test/X_test.txt")

# Merge x_test and x_train into x_merged
x_merged <- rbind(x_test,x_train)

# Merge y_merged and activity_labels into activities
# Set the activity_labels
y_merged[y_merged=='6']<-'LAYING'
y_merged[y_merged=='5']<-'STANDING'
y_merged[y_merged=='4']<-'SITTING'
y_merged[y_merged=='3']<-'WALKING_DOWNSTAIRS'
y_merged[y_merged=='2']<-'WALKING_UPSTAIRS'
y_merged[y_merged=='1']<-'WALKING'
activity_labels <- y_merged


# Make subjects data frame
###############################################################################

# Read in subject_test.txt to subject_test data frame
subject_test <- read.table('../UCI HAR Dataset/test/subject_test.txt')

# Read in subject_train.txt to subject_train data frame
subject_train <- read.table('../UCI HAR Dataset/train/subject_train.txt')

# Merge subject_test and subject_train data frames into subjects
subjects <- rbind(subject_test,subject_train)

# Step 4
# Appropriately labels the data set with descriptive variable names. 
# Make measurements data frame
###############################################################################

# Read in features.txt to features data frame
features <- read.table("../UCI HAR Dataset/features.txt")
colnames(features) <- c("index", "measurement")

# Convert the second column in the features data frame into a vector, which we will

# use to create column names in a merged x_test/x_train data frame.
features_labels <- as.vector(features['measurement'])

# Convert the features_labels data frame to char vector
features_labels <- features_labels$measurement
features_labels <- as.character(features_labels)

# Set the x_merged column names from the features_labels vector
colnames(x_merged) <- c(features_labels)

# Step 2
# Extracts only the measurements on the mean and standard deviation for each measurement. 
###############################################################################

# Drop unneeded columns from x_merged. Retain only mean and std measurements.
keep_mean_std <- c(grep('mean(?!(Freq))|([s][t][d])',names(x_merged), perl=TRUE, value = TRUE)) # A query to find the right labels
x_merged <- x_merged[keep_mean_std] # Drop all but mean & std variables as selected in the keep_mean_std vector

# Step 3
# Uses descriptive activity names to name the activities in the data set
###############################################################################

# Merge the activity_labels into the primary data frame (x_merged)
x_merged_activities <- data.frame(activity_labels,x_merged)

# Merge the list of subjects with the primary data frame (x_merged_activities)
x_all_activities_subjects <- data.frame(subjects,x_merged_activities)

# Get the current column names in the primary data frame
features_labels <- colnames(x_all_activities_subjects)

# Replace the first two values with the right variable type
features_labels[features_labels=="V1"]<-c("subject")
features_labels[features_labels=="V1.1"]<-c("activity")

# Replace the column names in the primary data frame with the complete names we just built
colnames(x_all_activities_subjects) <- c(features_labels)


# Step 5
# From the data set in Step 4, creates a second, independent tidy data set with 
# the average of each variable for each activity and each subject.
###############################################################################

all_averages <- ddply(x_all_activities_subjects, .(subject, activity), function(x) colMeans(x[, 3:68]))

write.table(all_averages, "all_averages.txt", row.name=FALSE) 