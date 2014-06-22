require(plyr)

# Read activity labels description
labels.description <- read.table("UCI HAR Dataset//activity_labels.txt", sep=" ", col.names=c("label","activity"))

# Read feature names
features <- read.table("UCI HAR Dataset//features.txt", sep=" ", col.names = c("id", "name"), stringsAsFactors=FALSE)

# Clean feature names (remove brackets, replace dashes and commas with underscores)
features$name <- gsub("\\(|\\)", "", features$name)
features$name <- gsub("[-,]", "_", features$name)

# Read train data, labels and subjects
train.data <- read.table("UCI HAR Dataset//train//X_train.txt", col.names=features$name)
train.labels <- read.table("UCI HAR Dataset//train//y_train.txt", col.names=c("label"))
train.subjects <- read.table("UCI HAR Dataset//train//subject_train.txt", col.names=c("subjectID"))

# Read test data, labels and subjects
test.data <- read.table("UCI HAR Dataset//test//X_test.txt", col.names=features$name)
test.labels <- read.table("UCI HAR Dataset//test//y_test.txt", col.names=c("label"))
test.subjects <- read.table("UCI HAR Dataset//test//subject_test.txt", col.names=c("subjectID"))

# Filter data to hold only mean and std measurements (and ingore e.g. "meanFreq")
indices = grepl('_mean[^A-Za-z]', features$name) | grepl("_std[^A-Za-z]", features$name)
train.data <- train.data[, indices]
test.data <- test.data[, indices]

# Merge all train data to one data frame
train.data$subject = train.subjects$subjectID
train.data$activity = merge(train.labels, labels.description)$activity

# Merge all test data to one data frame
test.data$subject = test.subjects$subjectID
test.data$activity = merge(test.labels, labels.description)$activity

# Union train and test data
data <- rbind(train.data, test.data)

# Calculate average of each variable for each activity and subject
tidy.data <- ddply(data, .(activity, subject), numcolwise(mean))

write.table(tidy.data, "activity_dataset.txt")
