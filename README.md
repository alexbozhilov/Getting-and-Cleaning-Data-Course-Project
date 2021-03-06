# Getting-and-Cleaning-Data-Course-Project

 Collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.
 
 One of the most exciting areas in all of data science right now is wearable computing. Companies like Fitbit, Nike, and Jawbone Up are racing to develop the most advanced algorithms to attract new users. The data from the link represent data collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

This is an R script called run_analysis.R that does the following.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement.
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names.
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

Tidy data set created tidyData.txt in step 5 is a text file created with write.table() using row.name=FALSE.

A code book that describes the variables, the data, and any transformations or work performed to clean up the data is called CodeBook.md

README.md explains how all of the scripts work and how they are connected.
