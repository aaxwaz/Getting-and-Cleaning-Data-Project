install.packages('data.table')
library(data.table)

#step 1 - please ensure all relevant files are inside your working directory

train = read.table('X_train.txt')
test = read.table('X_test.txt')
train_subject = read.table('subject_train.txt')
test_subject = read.table('subject_test.txt')
data = rbind(train, test)

train_y = read.table('y_train.txt', col.names='V562')
test_y = read.table('y_test.txt', col.names='V562')
y = rbind(train_y, test_y)

data = cbind(data, y)

#step 2 - Extracts only columns that measure mean and std of the variables, as well as adding the column of labels in the last

colsOfMean = c(1,2,3,41,42,43,81,82,83,121,122,123,161,162,163,201,214,227,240,253,266,267,268,345,346,347,424,425,426,503,516,529,542)
colsOfStd = c(4,5,6,44,45,46,84,85,86,124,125,126,164,165,166,202,215,228,241,254,269,270,271,348,349,350,427,428,429,504,517,530,543)
colsRemained = c(colsOfMean, colsOfStd, 562) 
data = data[colsRemained]

#step 3 - Use descriptive names for activities column

activityNames = c('Walking', 'WalkingUpstairs', 'WalkingDownstairs', 'Sitting', 'Standing', 'Laying')
intToName = function(x, namesList = activityNames) {namesList[x]}
data[,67] = sapply(data[,67], intToName)

#step 4 - Extract names from features.txt for the selected columns, and make them feasible names in R

features = read.table('features.txt')
selectedNames = make.names(features$V2)
selectedNames = selectedNames[c(colsOfMean, colsOfStd)]
selectedNames = gsub('\\.\\.\\.', '_', selectedNames)
selectedNames = gsub('\\.\\.$', '', selectedNames)
selectedNames = gsub('BodyBody', '', selectedNames)
selectedNames = c(selectedNames, 'ActivityNames')
colnames(data) = selectedNames

#Step 5 - Create a secondary data.table - DT - and group by "Subject" and "ActivityNames" columns, with function "mean" applied for each variable
#5a Combine the "subject" column on the left-most
subject = rbind(train_subject, test_subject)
data = cbind(subject, data)
colnames(data)[1] = 'Subject'

#5b Group by 'Subject' and 'ActivityNames', and calculate the mean for the other columns, 
#and finally order by 'Subject' column. (PS: The "data.table" package is being used here)
DT = data.table(data)
DT <- DT[, lapply(.SD,mean), by=c('Subject', 'ActivityNames')]
DT = DT[with(DT, order(Subject)), ]
write.table(DT, 'finalResult.txt', row.names=FALSE)


