# Loading test and train data
test = read.table("test/X_test.txt")
train = read.table("train/X_train.txt")

#Merging the training and the test sets
mergeddata = rbind(test,train)

# Appending activity-labels and subject ID's to the tables
testSubjectID = read.table("test/subject_test.txt")
trainSubjectID = read.table("train/subject_train.txt")
mergeddata = cbind(mergeddata,rbind(testSubjectID,trainSubjectID))
testAL = read.table("test/y_test.txt")
trainAL = read.table("train/y_train.txt")
mergeddata = cbind(mergeddata,rbind(testAL,trainAL))
feature = as.character(read.table("features.txt")[,2])
names(mergeddata) = c(feature,"SubjectID","ActivityLabel")

#Extracting only the measurements on the mean and standard deviation for each measurement but keeping the subjectID & ActivityLabel
MeanStdCols = grep("mean|std",names(mergeddata),value = FALSE)
mergeddata = mergeddata[,c(MeanStdCols,length(feature)+1,length(feature)+2)]

#Renaming columns with descriptive variable names
names(mergeddata) = gsub("Acc","Accelerometer",names(mergeddata))
names(mergeddata) = gsub("Gyro","Gyroscope",names(mergeddata))
names(mergeddata) = gsub("Mag","Magnitude",names(mergeddata))
names(mergeddata) = gsub("Freq","Frequency",names(mergeddata))
names(mergeddata) = gsub("mean","Mean",names(mergeddata))
names(mergeddata) = gsub("std","StandardDeviation",names(mergeddata))
names(mergeddata) = gsub("[()]","",names(mergeddata))
names(mergeddata) = gsub("^t","time",names(mergeddata))
names(mergeddata) = gsub("^f","frequency",names(mergeddata))
names(mergeddata) = gsub("-X","-Xaxis",names(mergeddata))
names(mergeddata) = gsub("-Y","-Yaxis",names(mergeddata))
names(mergeddata) = gsub("-Z","-Zaxis",names(mergeddata))

#Renaming activity labels with desciptive activity names
activitytable = as.character(read.table("activity_labels.txt")[,2])
mergeddata$ActivityLabel =  factor(mergeddata$ActivityLabel,labels = activitytable)

#Creating a second, independent tidy data set with the average of each variable for each activity and each subject
library(reshape2)
numberofvars = length(names(mergeddata))-2
datamelt = melt(mergeddata, id = c("SubjectID","ActivityLabel"), measure.vars = seq(1:numberofvars) )
wide = dcast(datamelt,SubjectID + ActivityLabel ~ variable,mean)