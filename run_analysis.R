#Course Project: Getting and Cleaning data


library(reshape2)

output.data <- "tidy_data.txt"

activities <- c(1, 2, 3, 4, 5, 6)
activity.names <- c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")

features.filename <- function(name) {
  paste("X_", name, ".txt", sep = "")
}

activities.filename <- function(name) {
  paste("y_", name, ".txt", sep = "")
}

subjects.filename <- function(name) {
  paste("subject_", name, ".txt", sep = "")
}


get.dataset <- function(dir, name, feature_indices, feature_names) {
  current.dir <- file.path(dir, name)
  features.filename <- file.path(current.dir, features.filename(name))
  activities.filename <- file.path(current.dir, activities.filename(name))
  subjects.filename <- file.path(current.dir, subjects.filename(name))
  
  all.features <- read.table(features.filename)
  
  extracted <- all.features[,feature_indices]
  colnames(extracted) <- feature_names
  
  return.data <- extracted
  df.activities <- read.table(activities.filename)

  names(df.activities) <- c("activity")
  df.activities$activity <- factor(df.activities$activity, levels = activities, labels = activity.names)
  return.data <- cbind(return.data, activity = df.activities$activity)
  
  df.subjects <- read.table(subjects.filename)
  names(df.subjects) <- c("subject")
  return.data <- cbind(return.data, subject = df.subjects$subject)
  return.data
}


summarizedata <- function(){
  dir <- getwd()
  r <- read.table("features.txt")

  feature_indices <- c(r[grepl("std", r$V2), c(1)], r[grepl("mean", r$V2), c(1)])
  a <- r[grepl("mean", r$V2),c(2)]
  b <- r[grepl("std", r$V2),c(2)]
  feature_names <- c(as.character(a),as.character(b))
  
  test <- get.dataset(dir, "test", feature_indices, feature_names)
  train <- get.dataset(dir, "train", feature_indices, feature_names)
  colnames(test)
  colnames(train)
  all.data <- rbind(test, train)

all.data <- melt(all.data, id = c("subject", "activity"))

all.data <- dcast(all.data, subject + activity ~ variable, mean)
write.table(all.data, output.data, row.names = FALSE, quote = FALSE)
print("Completed.")
}


summarizedata()
