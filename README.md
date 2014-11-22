Getting and Cleaning Data Project
=================================

This code was written as part of the project submission for the course - Getting and Cleaning Data on Coursera. 

Structure of the code is written in a way that it will run through each of the 5 steps sequentially. However, the scripts are good to run all at one go. For details explanation of each step please refer to the comments inside the script.  

Please download the Samsung data set that will be used by the code from the course project page, as in the link below: 
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

Usage:
---------------
1) Data files that will need to be placed inside the working directory are (before running the script): 

    X_train.txt
    
    y_train.txt
    
    X_test.txt
    
    y_test.txt
    
    subject_test.txt
    
    subject_train.txt
    
    
2) output file that will be generated upon completion: 

    finalResult.txt
    
3) To view the data, please use below line in R to read finalResult.txt from your working directory: 

viewResult = read.table('finalResult.txt', header=T)

Requirements:
---------------
This code will require R and data.table package. It has been tested under Windows
