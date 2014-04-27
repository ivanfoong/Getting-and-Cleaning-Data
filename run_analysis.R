# read from file and return a data that is tidy to be used to calculate the average for mean and
# standard deviation for each subject and each unique activity
getDataSet <- function() {
  columnNames <- c("subject", as.character(read.table("UCI HAR Dataset/features.txt")[,2]), "activity")
  
  subjectsTrain <- read.table("UCI HAR Dataset/train/subject_train.txt")
  featuresTrain <- read.table("UCI HAR Dataset/train/X_train.txt")
  activitiesTrain <- read.table("UCI HAR Dataset/train/y_train.txt")
  dataTrain <- cbind(subjectsTrain, featuresTrain, activitiesTrain)
  
  subjectsTest <- read.table("UCI HAR Dataset/test/subject_test.txt")
  featuresTest <- read.table("UCI HAR Dataset/test/X_test.txt")
  activitiesTest <- read.table("UCI HAR Dataset/test/y_test.txt")
  dataTest <- cbind(subjectsTest, featuresTest, activitiesTest)
  
  # concat training and test data together
  dat <- rbind(dataTrain, dataTest)
  
  names(dat) <- columnNames
  
  tidyDat <- dat[,grepl("(subject|activity|mean\\(\\)|std\\(\\))", names(dat))]
  
  # clean up column names for easy reference to the 
  # - strip non alpha-numeric characters
  # - lower case all character
  columnNames <- tolower(str_replace_all(names(tidyDat), "[^[:alnum:]]", ""))
  names(tidyDat) <- columnNames
  
  activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt", col.names=c("activity","activitylabel"))
  
  tidyDat2 <- merge(activityLabels, tidyDat)
  
  # order by activitylabel then subject, and drop activity column
  tidyDat2 <- tidyDat2[order(tidyDat2$activitylabel, tidyDat2$subject), -which(names(tidyDat2) %in% c("activity"))]
  
  return(tidyDat2)
}

# calculate and return the average for the mean and standard deviation columns for
# each subject and each unique activity
getAverageDataset <- function(tidyDat) { 
  tidyTable <- data.table(tidyDat)
  averageDat <- tidyTable[, lapply(.SD, mean), by=c("activitylabel", "subject")]
  
  averageDatSorted <- averageDat[order(averageDat$activity, averageDat$subject),]
  
  return(averageDatSorted)
}

# save data to flat file
exportData <- function(tidyDatSorted, meanDatSorted) {
  write.table(tidyDatSorted, file="tidy.txt", col.names=FALSE, row.names=FALSE)
  write.table(meanDatSorted, file="average.txt", col.names=FALSE, row.names=FALSE)
}

dat <- getDataSet()
averageDat <- getAverageDataset(dat)
exportData(dat, averageDat)