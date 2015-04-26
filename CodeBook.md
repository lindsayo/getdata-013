**Introduction**

This codebook is a companion to run_analysis.R, which assembles a tidy data set from the original source:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

**Data Set Information**
{Overview of the experiment, the data that were collected}

**Files**
This repository contains the following files, some original and some created for this project:
  {list original}
  {list new tidy data set files}

**Measurements**
The variables in the final data set are:
* "subject": The ID number of the person measured.                 
* "activity": The activity the subject performed.
* The measurements names are built in a modular way. The components are:
	* Time or Frequency
		* t: time
		* f: frequency
	* Type of measurement
		* Body: body motion component of acceleration
		* Gravity: gravity motion component of acceleration
	* Instrument
		* Acc: accelerometer
		* Gyro: gyroscope
	* Summary statistic
		* STD: standard deviation
		* Mean: mean, average
	* Axis
		* X: x-axis
		* Y: y-axis
		* Z: z-axis

	* "tBodyAccMeanX"
	* "tBodyAccMeanY"           
	* "tBodyAccMeanZ"            
	* "tBodyAccSTDX"            
	* "tBodyAccSTDY"             
	* "tBodyAccSTDZ"            
	* "tGravityAccMeanX"         
	* "tGravityAccMeanY"        
	* "tGravityAccMeanZ"         
	* "tGravityAccSTDX"         
	* "tGravityAccSTDY"          
	* "tGravityAccSTDZ"         
	* "tBodyAccJerkMeanX"        
	* "tBodyAccJerkMeanY"       
	* "tBodyAccJerkMeanZ"        
	* "tBodyAccJerkSTDX"        
	* "tBodyAccJerkSTDY"         
	* "tBodyAccJerkSTDZ"        
	* "tBodyGyroMeanX"           
	* "tBodyGyroMeanY"          
	* "tBodyGyroMeanZ"           
	* "tBodyGyroSTDX"           
	* "tBodyGyroSTDY"           
	* "tBodyGyroSTDZ"          
	* "tBodyGyroJerkMeanX"      
	* "tBodyGyroJerkMeanY"     
	* "tBodyGyroJerkMeanZ"      
	* "tBodyGyroJerkSTDX"      
	* "tBodyGyroJerkSTDY"       
	* "tBodyGyroJerkSTDZ"      
	* "tBodyAccMagMean"         
	* "tBodyAccMagSTD"         
	* "tGravityAccMagMean"      
	* "tGravityAccMagSTD"      
	* "tBodyAccJerkMagMean"     
	* "tBodyAccJerkMagSTD"     
	* "tBodyGyroMagMean"        
	* "tBodyGyroMagSTD"        
	* "tBodyGyroJerkMagMean"    
	* "tBodyGyroJerkMagSTD"    
	* "fBodyAccMeanX"           
	* "fBodyAccMeanY"          
	* "fBodyAccMeanZ"           
	* "fBodyAccSTDX"           
	* "fBodyAccSTDY"            
	* "fBodyAccSTDZ"           
	* "fBodyAccJerkMeanX"       
	* "fBodyAccJerkMeanY"      
	* "fBodyAccJerkMeanZ"       
	* "fBodyAccJerkSTDX"       
	* "fBodyAccJerkSTDY"        
	* "fBodyAccJerkSTDZ"       
	* "fBodyGyroMeanX"          
	* "fBodyGyroMeanY"         
	* "fBodyGyroMeanZ"          
	* "fBodyGyroSTDX"          
	* "fBodyGyroSTDY"           
	* "fBodyGyroSTDZ"          
	* "fBodyAccMagMean"         
	* "fBodyAccMagSTD"         
	* "fBodyBodyAccJerkMagMean" 
	* "fBodyBodyAccJerkMagSTD"
	* "fBodyBodyGyroMagMean"   
	* "fBodyBodyGyroMagSTD"   
	* "fBodyBodyGyroJerkMagMean"
	* "fBodyBodyGyroJerkMagSTD"

