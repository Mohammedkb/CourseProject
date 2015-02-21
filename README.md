#Human Activity Recognition Using Smartphones Dataset-README

##About the Project

One of the most recent, challenging and appealing applications in Human-centered computing consists in sensing human body motion using smartphones to gather context information about people actions. In this context, we describe in this work an Activity Recognition database, built from the recordings of 30 subjects doing Activities of Daily Living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors.

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING UPSTAIRS, WALKING DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.

Using the smartphone embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

##Scope and Purpose of this Project

The scope of this phase of the project is to process the input datasets (X_train and X_test) linked to the activities carried out and to the subjects (volunteers) carrying out these activities. Then, come up with a final tidy data set with the average of measurements for the mean and standard deviation variables grouped by each activity and each subject (volunteer).

##Project Datasets

>**Input (raw) data**: this dataset consists of the following files (notice that the files listed below are the ones needed to run the script and to produce the final tidy data):
>>'features.txt': a list of all features (561 variables)

>>'test/X_test.txt': the test observations dataset.

>>'train/X_train.txt': the training observations dataset.

>>'test/y_test.txt': the classes (numeric categories) of the test activities

>>'train/y_train.txt': the classes (numeric categories) of the training activities.

>>'test/subject_test.txt': the classes of the subjects (volunteers) carried out the test activities.

>>'train/subject_train.txt': the classes of the subjects (volunteers) carried out the training activities.

>**Output (tidy) data**: this dataset consists of one file (tidyData.txt) that consists of 88 variables (including the subject and activity variables).

A detailed description of each variable of this data file is provided in the Codebook of this project.


##Important Notes before Running the Script

 * The run_analysis.R script starts with the assumption that the input (Samsung) data is available in an unzipped 'UCI HAR Dataset' folder with the working directory pointing to this folder. You can set your working directory using the setwd() command, or through menu bar Session/Set Working Directory/Choose Directory.
 
 * The script uses the 'dplyr' and the 'reshape2' packages. Make sure they are installed in R before running the script. (Use install.packages for installation.)

 * The script creates the tidyData.txt file under your current working directory (which should be the 'UCI HAR Dataset' folder).

 * If you want to read the generated tidy data file again into R, use the read.table(header=TRUE) command.

##Description of the Data Analysis
This section describes briefly how input data is collected and processed to produce the final tidyData file.

By running the run_analysis.R script experiments files- for both test and training datasets- are read into R and combined into one dataset.

Since experiments files do not have headers, the script reads the features file (variable names) and assigns them as headers to the 561 variables in the dataset after doing some modifications to the names for better readability.

Then the script reads the activities files corresponding to the test and train files and combines them together. It also reads the subjects (volunteers) files corresponding to the test and train files and combines them together.

The script then extracts the variables that contain 'mean' and 'std' from the combined experiments dataset and combines them with the corresponding activities and subjects into another dataset. It also replaces the activity class values by activity descriptive values (WALKING, WALKING_UPSTAIRS, etc.).

Since we need to calculate the average value of each variable for each subject and each activity the script summarizes the data by subject, activity, and mean of variables values into a wide-form final tidyData dataset and creates a txt file (tidyData.txt) saved in the current working directory ('UCI HAR Dataset' folder).

##Step-by-Step Description of the Analysis (Script Description)
Below are the steps used to read input data, transform it, summarize it, and generate the tidy data file (Note: the run_analysis.R script has comments explaining each line code):

 1. Load the required packages (dplyr and reshape2)
 2. Read the test observations txt file (X_test) [using: read.table]
 3. Read the training observations txt file (X_train) [using: read.table]
 4. Combine the test and train datasets into a new data frame (X_data) [using: rbind]
 5. Read the variables (features) txt file that lists names of the 561 variables of the X data sets. [using: read.table].
 6. Replace variable names in the features datasets with more descriptive names for better readability and R-naming conventions. I.e. replace 't' by 'time' and 'f' by 'freq'. And remove punctuation marks (except the underscore).
 7. Assign the modified variable names (features) to the combined data set (X_data). [Using: names()]
 8. Read the activity classes (y _ test.txt) corresponding to the X_test data. [Using: read.table]
 9. Read the activity classes (y _ train.txt) corresponding to the X_train data. [Using: read.table]
 10. Combine the test and train activity classes datasets into a new data frame (y_data) [using: rbind].
 11. Name the activity class variable in the y_data with "activity". [Using: names()].
 12. Read the subject (subject _ test.txt) corresponding to the X_test data. [Using: read.table]
 13. Read the subject (subject _ train.txt) corresponding to the X_train data. [Using: read.table]
 14. Combine the test and train subjects datasets into a new data frame (subject_data) [using: rbind].
 15. Name the subject variable in the subject_data with "subject". [Using: names()].
 16. Combine the X _ data, y _ data, and subject _ data into one new data frame (X _ data _ comb). [Using: cbind].
 17. Extract the variables that contain 'mean' and 'std' from the new data frame into new data frames (meanCol and stdCol). [Using grep() ignoring case].
 18. Combine the subject and activity variables with the mean and std data frames into a new data frame (X _ data _ MeanStd). [Using: cbind].
 19. Replace the activity class values by activity descriptive values (WALKING, WALKING_UPSTAIRS, etc.).
 20. Reshape the X _ data _ MeanStd data frame into subject, activity, variables, and measurements values. [Using: melt()]
 21. Group the reshaped data into subject, activity, and variable. [Using: group_by].
 22. Summarize the grouped data by subject, activity, and mean of variables values. [Using: summarize()]
 23. Convert the long-form data into a wide-form data. [Using: dcast()]
 24. Create a txt file (tidyData.txt) of the final tidy data and save it to the current working directory ('UCI HAR Dataset' folder). [Using: write.table()].
