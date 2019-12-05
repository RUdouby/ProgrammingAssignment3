# need to have the packages "utils" and "reshape2" loaded

run_analysis <- function() {
        
        #set up the data paths to read in data, make sure the wd is set to where the data is stored
        x_train_path <- c("X_train.txt")
        y_train_path <- c("y_train.txt")
        sub_train_path <- c("subject_train.txt")
        x_test_path <- c("X_test.txt")
        y_test_path <- c("y_test.txt")
        sub_test_path <- c("subject_test.txt")
        varnames_path <- c("features.txt")
        activitynames_path <- c("activity_labels.txt")
        
        #read in tables
        x_train <- read.table(x_train_path)
        y_train <- read.table(y_train_path)
        sub_train <- read.table(sub_train_path)
        x_test <- read.table(x_test_path)
        y_test <- read.table(y_test_path)
        sub_test <- read.table(sub_test_path)
        varnames <- read.table(varnames_path, colClasses = c("numeric", "character"))
        activitynames <- read.table(activitynames_path, colClasses = c("numeric", "character"))
        
        # combine 
        traindata <- cbind(sub_train, y_train, x_train)
        testdata <- cbind(sub_test, y_test, x_test)
        mergeddata <- rbind(traindata, testdata)
        varnames2 <- c("subject", "activity_labels", varnames[, 2])
        
        #add columns names to describe variables
        colnames(mergeddata) <- varnames2
        colnames(activitynames) <- c("activityno", "activitytype")
        labeleddata <- merge(activitynames, mergeddata, by.x = "activityno", by.y = "activity_labels")
        
        #subset the data to get the only mean and std deviation columns
        labeleddata <- labeleddata[, grepl("activity", names(labeleddata)) | grepl("subject", names(labeleddata)) | grepl("mean", names(labeleddata)) | grepl("std", names(labeleddata))]
        labeleddata <- labeleddata[, -grep("Freq", names(labeleddata))]
        labeleddata <- subset(labeleddata, select = -activityno)
        
        #now reorganize and classify your id columns with melt then take the sum of each variable with dcast
        meltdata <- melt(labeleddata, variable.name = "key", value.name = "value", id.vars = c("subject", "activitytype"))
        castdata <- dcast(meltdata, subject+activitytype ~ key, mean)
        
        write.table(castdata, file = "Course3AssigOutput.txt", row.names = FALSE)
}
