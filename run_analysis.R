install.packages('data.table')
library(data.table)

#step 1 - please ensure files are inside your working directory

train = read.table('X_train.txt')
test = read.table('X_test.txt')
train_subject = read.table('subject_train.txt')
test_subject = read.table('subject_test.txt')

data = rbind(train, test)
train_y = read.table('y_train.txt', col.names='V562')
test_y = read.table('y_test.txt', col.names='V562')
y = rbind(train_y, test_y)
data = cbind(data, y)

#step 2 - Extracts only columns that measure mean and std of the variables, as well as the column of labels

colsOfMean = c(1,2,3,41,42,43,81,82,83,121,122,123,161,162,163,201,214,227,240,253,266,267,268,345,346,347,424,425,426,503,516,529,542)
colsOfStd = c(4,5,6,44,45,46,84,85,86,124,125,126,164,165,166,202,215,228,241,254,269,270,271,348,349,350,427,428,429,504,517,530,543)
colsRemained = c(colsOfMean, colsOfStd, 562)
data = data[colsRemained]

#step 3 - Use descriptive names for activities column

activityNames = c('Walking', 'WalkingUpstairs', 'WalkingDownstairs', 'Sitting', 'Standing', 'Laying')
intToName = function(x, namesList = activityNames) {namesList[x]}
data[,67] = sapply(data[,67], intToName)

#step 4 - Use descriptive names for variables 

newColsNamesForMean = c('timeBodyAccelerationMean_X','timeBodyAccelerationMean_Y', 'timeBodyAccelerationMean_Z', 'timeGravityAccelerationMean_X', 'timeGravityAccelerationMean_Y', 'timeGravityAccelerationMean_Z', 'timeBodyAccelerationJerkMean_X', 'timeGravityAccelerationMean_Y', 'timeGravityAccelerationMean_Z', 'timeBodyGyroMean_X', 'timeBodyGyroMean_Y', 'timeBodyGyroMean_Z', 'timeBodyGyroJerkMean_X', 'timeBodyGyroJerkMean_Y', 'timeBodyGyroJerkMean_Z', 'timeBodyAccelerationMagnitudeMean', 'timeGravityAccelerationMagnitudeMean', 'timeBodyAccelerationJerkMagnitudeMean', 'timeBodyGyroMagnitudeMean', 'timeBodyGyroJerkMagnitudeMean', 'freqBodyAccelerationMean_X', 'freqBodyAccelerationMean_Y', 'freqBodyAccelerationMean_Z', 'freqBodyAccelerationJerkMean_X', 'freqBodyAccelerationJerkMean_Y', 'freqBodyAccelerationJerkMean_Z', 'freqBodyGyroMean_X', 'freqBodyGyroMean_Y', 'freqBodyGyroMean_Z', 'freqBodyAccelerationMagintudeMean', 'freqBodyBodyAccelerationJerkMagnitudeMean', 'freqBodyBodyGyroMagnitudeMean', 'freqBodyBodyGyroJerkMagnitudeMean')
newColsNamesForStd = c('timeBodyAccelerationStd_X','timeBodyAccelerationStd_Y', 'timeBodyAccelerationStd_Z', 'timeGravityAccelerationStd_X', 'timeGravityAccelerationStd_Y', 'timeGravityAccelerationStd_Z', 'timeBodyAccelerationJerkStd_X', 'timeGravityAccelerationStd_Y', 'timeGravityAccelerationStd_Z', 'timeBodyGyroStd_X', 'timeBodyGyroStd_Y', 'timeBodyGyroStd_Z', 'timeBodyGyroJerkStd_X', 'timeBodyGyroJerkStd_Y', 'timeBodyGyroJerkStd_Z', 'timeBodyAccelerationMagnitudeStd', 'timeGravityAccelerationMagnitudeStd', 'timeBodyAccelerationJerkMagnitudeStd', 'timeBodyGyroMagnitudeStd', 'timeBodyGyroJerkMagnitudeStd', 'freqBodyAccelerationStd_X', 'freqBodyAccelerationStd_Y', 'freqBodyAccelerationStd_Z', 'freqBodyAccelerationJerkStd_X', 'freqBodyAccelerationJerkStd_Y', 'freqBodyAccelerationJerkStd_Z', 'freqBodyGyroStd_X', 'freqBodyGyroStd_Y', 'freqBodyGyroStd_Z', 'freqBodyAccelerationMagintudeStd', 'freqBodyBodyAccelerationJerkMagnitudeStd', 'freqBodyBodyGyroMagnitudeStd', 'freqBodyBodyGyroJerkMagnitudeStd')
newColsNames = c(newColsNamesForMean, newColsNamesForStd, 'ActivityNames')
colnames(data) = newColsNames

#Step 5 - Create a secondary data.table - DT - and group by "Subject" and "ActivityNames" columns, with function "mean" applied for each variable

#combine the "subject" column, put it on the left-most, and name it as 'Subject'
subject = rbind(train_subject, test_subject)
data = cbind(subject, data)
colnames(data)[1] = 'Subject'

#Group by 'Subject' and 'ActivityNames', and calculate the mean on the rest columns, 
#and finally order by 'Subject' column. 
#The data.table package is being used here
DT = data.table(data)
DT <- DT[, lapply(.SD,mean), by=c('Subject', 'ActivityNames')]
DT = DT[with(DT, order(Subject)), ]
write.table(DT, 'finalResult.txt', row.names=FALSE)















