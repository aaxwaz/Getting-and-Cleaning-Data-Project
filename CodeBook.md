# Getting and Cleaning Data Project Code Book
**OVERVIEW** 

This code book summarizes variables appearing in the "finalResult.txt", which you will get after running "run_analysis.R" script. The names have been originally extracted from "features.txt", and transformed into a consistent naming convention described below. 


**NAMING CONVENTION** 

Variables starting with “t” or “f” represent measurements in time and frequency domain, respectively. 

Variables having “.mean” or “.std” represent mean or standard deviation measurements, respectively. 

Variables with “_X”, “_Y” or “_Z” pending at the end represent measurements done along x-, y- or z-axis, respectively. 



**VARIABLES** 

###### Subject (INT)

An identifier of the subject who carried out the experiment. Ranges from 1 to 30

###### ActivityNames (FACTOR)

Its activity label. 6 levels: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING

###### tBodyAcc.mean_X (DOUBLE)

Mean value of body acceleration in time domain along X-axis 

###### tBodyAcc.mean_Y (DOUBLE)

Mean value of body acceleration in time domain along Y-axis 

###### tBodyAcc.mean_Z (DOUBLE)

Mean value of body acceleration in time domain along Z-axis 

###### tGravityAcc.mean_X (DOUBLE)	

Mean value of gravity acceleration in time domain along X-axis 

###### tGravityAcc.mean_Y (DOUBLE)	

Mean value of gravity acceleration in time domain along Y-axis 

###### tGravityAcc.mean_Z (DOUBLE)	

Mean value of gravity acceleration in time domain along Z-axis 

###### tBodyAccJerk.mean_X (DOUBLE)	

Mean value of body acceleration jerk in time domain along X-axis 

###### tBodyAccJerk.mean_Y (DOUBLE)	

Mean value of body acceleration jerk in time domain along Y-axis 

###### tBodyAccJerk.mean_Z (DOUBLE)	

Mean value of body acceleration jerk in time domain along Z-axis 

###### tBodyGyro.mean_X	(DOUBLE)

Mean value of angular velocity in time domain along X-axis 

###### tBodyGyro.mean_Y (DOUBLE)

Mean value of angular velocity in time domain along Y-axis 

###### tBodyGyro.mean_Z (DOUBLE)

Mean value of angular velocity in time domain along Z-axis 

###### tBodyGyroJerk.mean_X (DOUBLE)

Mean value of angular velocity jerk in time domain along X-axis 

###### tBodyGyroJerk.mean_Y (DOUBLE)

Mean value of angular velocity jerk in time domain along Y-axis 

###### tBodyGyroJerk.mean_Z (DOUBLE)

Mean value of angular velocity jerk in time domain along Z-axis 

###### tBodyAccMag.mean (DOUBLE)    

Mean value of body acceleration magnitude in time domain

###### tGravityAccMag.mean (DOUBLE) 

Mean value of gravity acceleration magnitude in time domain

###### tBodyAccJerkMag.mean (DOUBLE)

Mean value of body acceleration magnitude jerk in time domain

###### tBodyGyroMag.mean (DOUBLE)

Mean value of angular velocity magnitude in time domain

######	tBodyGyroJerkMag.mean (DOUBLE)
	
Mean value of angular velocity jerk magnitude in time domain
	
######	fBodyAcc.mean_X (DOUBLE)
	
Mean value of body acceleration in freq domain along X-axis 
	
######	fBodyAcc.mean_Y (DOUBLE)   
	
Mean value of body acceleration in freq domain along Y-axis 
	
######	fBodyAcc.mean_Z (DOUBLE)       
	
Mean value of body acceleration in freq domain along Z-axis 
	
######	fBodyAccJerk.mean_X (DOUBLE)
	
Mean value of body acceleration jerk in freq domain along X-axis 
	
######	fBodyAccJerk.mean_Y (DOUBLE)
	
Mean value of body acceleration jerk in freq domain along Y-axis 
	
######	fBodyAccJerk.mean_Z (DOUBLE)
	
Mean value of body acceleration jerk in freq domain along Z-axis 
	
######	fBodyGyro.mean_X (DOUBLE)     
	
Mean value of angular velocity in freq domain along X-axis 
	
######	fBodyGyro.mean_Y (DOUBLE)   
	
Mean value of angular velocity in freq domain along Y-axis 
	
######	fBodyGyro.mean_Z (DOUBLE)     
	
Mean value of angular velocity in freq domain along Z-axis 
	
######	fBodyAccMag.mean (DOUBLE)    
	
Mean value of body acceleration magnitude in freq domain
	
######	fAccJerkMag.mean (DOUBLE)     
	
Mean value of acceleration jerk magnitude in freq domain
	
######	fGyroMag.mean (DOUBLE)     
	
Mean value of angular magnitude in freq domain
	
######	fGyroJerkMag.mean (DOUBLE)    
	
Mean value of angular jerk magnitude in freq domain
	
######	tBodyAcc.std_X (DOUBLE)    
	
Standard deviation of body acceleration in time domain along X-axis 
	
######	tBodyAcc.std_Y (DOUBLE)
	
Standard deviation of body acceleration in time domain along Y-axis 
	
######	tGravityAcc.std_X (DOUBLE)

Standard deviation of gravity acceleration in time domain along X-axis
	
######	tGravityAcc.std_Z (DOUBLE)
	
Standard deviation of gravity acceleration in time domain along Z-axis
	
######	tBodyAccJerk.std_Y (DOUBLE)
	
Standard deviation of body acceleration jerk in time domain along Y-axis
	
######	tBodyGyro.std_X (DOUBLE)
	
Standard deviation of angular velocity in time domain along X-axis
	
######	tBodyGyro.std_Z (DOUBLE)
	
Standard deviation of angular velocity in time domain along Z-axis
	
######	tBodyGyroJerk.std_Y (DOUBLE)
	
Standard deviation of angular velocity jerk in time domain along Y-axis
	
######	tBodyAccMag.std (DOUBLE)
	
Standard deviation of body acceleration magnitude in time domain
	
######	tBodyAccJerkMag.std (DOUBLE)
	
Standard deviation of body acceleration jerk magnitude in time domain
	
######	tBodyGyroJerkMag.std (DOUBLE)
	
Standard deviation of angular velocity jerk magnitude in time domain
	
######	fBodyAcc.std_Y (DOUBLE)
	
Standard deviation of body acceleration magnitude in freq domain along Y-axis
	
######	fBodyAccJerk.std_X (DOUBLE)
	
Standard deviation of body acceleration jerk in freq domain along X-axis
	
######	fBodyAccJerk.std_Z (DOUBLE)
	
Standard deviation of body acceleration jerk in freq domain along Z-axis
	
######	fBodyGyro.std_Y (DOUBLE)
	
Standard deviation of angular velocity in freq domain along Y-axis
	
######	fBodyAccMag.std (DOUBLE)
	
Standard deviation of body acceleration magnitude in freq domain
	
######	fGyroMag.std (DOUBLE)
	
Standard deviation of angular magnitude in freq domain
	
######	tBodyAcc.std_Z (DOUBLE)
	
Standard deviation of body acceleration in time domain along Z-axis
	
######	tGravityAcc.std_Y (DOUBLE)
	
Standard deviation of gravity acceleration in time domain along Y-axis
	
######	tBodyAccJerk.std_X (DOUBLE)
	
Standard deviation of body acceleration jerk in time domain along X-axis
	
######	tBodyAccJerk.std_Z (DOUBLE)
	
Standard deviation of body acceleration jerk in time domain along Z-axis
	
######	tBodyGyro.std_Y (DOUBLE)
	
Standard deviation of angular velocity in time domain along Y-axis
	
######	tBodyGyroJerk.std_X (DOUBLE)
	
Standard deviation of angular velocity jerk in time domain along X-axis
	
######	tBodyGyroJerk.std_Z (DOUBLE)
	
Standard deviation of angular velocity jerk in time domain along Z-axis
	
######	tGravityAccMag.std (DOUBLE)
	
Standard deviation of gravity acceleration magnitude in time domain
	
######	tBodyGyroMag.std (DOUBLE)
	
Standard deviation of angular velocity magnitude in time domain
	
######	fBodyAcc.std_X (DOUBLE)
	
Standard deviation of body acceleration in freq domain along X-axis
	
######	fBodyAcc.std_Z (DOUBLE)
	
Standard deviation of body acceleration in freq domain along Z-axis
	
######	fBodyAccJerk.std_Y (DOUBLE)
	
Standard deviation of body acceleration jerk in freq domain along Y-axis
	
######	fBodyGyro.std_X (DOUBLE)
	
Standard deviation of angular velocity in freq domain along X-axis
	
######	fBodyGyro.std_Z (DOUBLE)
	
Standard deviation of angular velocity in freq domain along Z-axis
	
######	fAccJerkMag.std (DOUBLE)
	
Standard deviation of acceleration jerk magnitude in freq domain
	
######	fGyroJerkMag.std (DOUBLE)

Standard deviation of angular jerk magnitude in freq domain






















