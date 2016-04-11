library(plyr)

# Step 1
# Create one data set
x_train <- read.table("train/X_train.txt")
y_train <- read.table("train/y_train.txt")
subject_train <- read.table("train/subject_train.txt")

x_test <- read.table("test/X_test.txt")
y_test <- read.table("test/y_test.txt")
subject_test <- read.table("test/subject_test.txt")

# create x_data set
x_data <- rbind(x_train, x_test)

# create y_data set
y_data <- rbind(y_train, y_test)

# create subject_data set
subject_data <- rbind(subject_train, subject_test)

# Step 2
# Extract only the measurements on the mean and standard deviation for each measurement
features <- read.table("features.txt")

# get only columns with mean() or std() in their names
meanStd <- grep("-(mean|std)\\(\\)", features[, 2])

# subset the desired columns
x_data <- x_data[, meanStd]

# correct the column names
names(x_data) <- features[meanStd, 2]

# Step 3
# Use activity_labels.tx to name the activities in the data set
activities <- read.table("activity_labels.txt")

# update values with correct activity names
y_data[, 1] <- activities[y_data[, 1], 2]

# correct column name
names(y_data) <- "activity"

# Step 4
# correct column name
names(subject_data) <- "subject"

# bind all the data in a single data set
newData <- cbind(x_data, y_data, subject_data)
# Step 5
# Create a second data set with independent tidy data
averages_data <- ddply(newData, .(subject, activity), function(x) colMeans(x[, 1:66]))

write.table(averages_data, "tidyData.txt", row.name=FALSE)
