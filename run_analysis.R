## Load the required packages (dplyr and reshape2)
library(dplyr)
library(reshape2)

## Read the test and train observations txt files and combine them into
## a new table (X_data).

X_test<-read.table("./test/X_test.txt",sep = "",header = FALSE)
X_train<-read.table("./train/X_train.txt",sep = "",header = FALSE)
X_data<-rbind(X_test,X_train)

## Read the variables (features) txt file that lists names of the 561
## variables of the X data sets.

features<-read.table("./features.txt",sep = "",header = FALSE)

## Replace variable names in the features table by more descriptive names
## for better readability and R naming conventions (keeping the underscore)

features[,2]<-gsub("tBody","time_Body",features[,2])
features[,2]<-gsub("tGravity","time_Gravity",features[,2])
features[,2]<-gsub("fBody","freq_Body",features[,2])
features[,2]<-gsub("fGravity","freq_Gravity",features[,2])
features[,2]<-gsub("BodyBody","Body",features[,2])
features[,2]<-gsub("-","_",features[,2])
features[,2]<-gsub("[^[:alnum:]_]", "", features[,2])

## Assign the modified variable names (features) to the combined
## data set (X_data) column heads.

names(X_data)<-features[,2]

## Read the activity classes for both test and train data and comine them
## into a new table (y_data).

y_test<-read.table("./test/y_test.txt",sep="",header = FALSE)
y_train<-read.table("./train/y_train.txt",sep="",header = FALSE)
y_data<-rbind(y_test,y_train)

## name the activity column in the y_data table with "activity"

names(y_data)<-"activity"

## Read the subjects data for both test and train data and comine them
## into a new table (subject_data).

subject_test<-read.table("./test/subject_test.txt",sep="",header = FALSE)
subject_train<-read.table("./train/subject_train.txt",sep="",header = FALSE)
subject_data<-rbind(subject_test,subject_train)

## name the subject column in the subject_data table with "subject"

names(subject_data)<-"subject"

## Combine the X_data, y_data, and subject_data into one new
## table (X_data_comb)

X_data_comb<-cbind(subject_data,y_data,X_data)

## Extract the variables that contain 'mean' and 'std' from the X_data_comb table
## into new tables (meanCol and stdCol, respectively). 

meanCol<-X_data_comb[,grep("mean",names(X_data_comb),ignore.case = TRUE)]
stdCol<-X_data_comb[,grep("std",names(X_data_comb),ignore.case = TRUE)]

## Combine the subject and activity variables from X_data_comb table with the
## mean and std tables to form a new table (X_data_MeanStd).

X_data_MeanStd<-cbind(X_data_comb[,1:2],meanCol,stdCol)

## Replace the activity class values by activity descriptive values

X_data_MeanStd[X_data_MeanStd$activity==1,2]<-"WALKING"
X_data_MeanStd[X_data_MeanStd$activity==2,2]<-"WALKING_UPSTAIRS"
X_data_MeanStd[X_data_MeanStd$activity==3,2]<-"WALKING_DOWNSTAIRS"
X_data_MeanStd[X_data_MeanStd$activity==4,2]<-"SITTING"
X_data_MeanStd[X_data_MeanStd$activity==5,2]<-"STANDING"
X_data_MeanStd[X_data_MeanStd$activity==6,2]<-"LAYING"

## Reshape the X_data_MeanStd table into long-form table of subject, activity, 
## variables, and measurement vaules

reshapedData<-melt(X_data_MeanStd,id=c(1:2),measure.vars = c(3:88))

## Group the reshaped data into subject, activity, and variable. Then summarize these
## columns by the mean of the measurements values
## save the summarized data in tidyData table

grouped<-group_by(reshapedData,subject,activity,variable)
tidyData<-summarize(grouped,mean(value))

## convert the tidyData table into wide-form

tidyData<-dcast(tidyData,subject+activity~variable)

## write (export) the final wide-form tidyData to a tidyData.txt
## under the working directory folder "UCI HAR Dataset"

write.table(tidyData,"./tidyData.txt",row.names = FALSE)

## END OF SCRIPT