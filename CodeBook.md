##ASSIGNMENT for WEEK 4 of GETTING AND CLEANING DATA

TRANSFORMATIONS - HOW WAS tidydata.txt CREATED using run_analysis.R?

The zip file containing the source data is located at: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip.

1. The training and test sets were merged to create one data set.
2. Only the measurements of the means and standard deviations were selected for each measurement.
3. The activity identifiers (coded as integers between 1 and 6) were replaced with descriptive activity names (from the activity_labels file).
4. Variable names made descriptive:
  a. Parenthesis and full stops were removed
  b. Abbreviations Acc, Freq, Mag, GyroJerk, Gyro, BodyBody, t, tBody, f and std were replaced by Acceleration, Frequency, Magnitude, AngularSpeed, Body, Time, TimeBody, Frequency, and STD.
  c. Capital letters were used in Angle, Gravity, and Mean variables.
5. Final data set was created with the average of each variable for each activity and each subject.

DATA DICTIONARY - VARIABLES
[1] "subject" -- number of participant
             1-30
             
[2] "activity" -- name of performed activity, 
             1. "LAYING"
             2. "SITTING"
             3. "STANDING"
             4. "WALKING"
             5. "WALKING DOWNSTAIRS"
             6. "WALKING UPSTAIRS"
            
averages and standard deviations of measurements of signal in Time and Frequency domain
            [3] "TimeBodyAccelerationMeanX"                             
            [4] "TimeBodyAccelerationMeanY"                             
            [5] "TimeBodyAccelerationMeanZ"                             
            [6] "TimeBodyAccelerationSTDX"                              
            [7] "TimeBodyAccelerationSTDY"                              
            [8] "TimeBodyAccelerationSTDZ"                              
            [9] "TimeGravityAccelerationMeanX"                          
            [10] "TimeGravityAccelerationMeanY"                          
            [11] "TimeGravityAccelerationMeanZ"                          
            [12] "TimeGravityAccelerationSTDX"                           
            [13] "TimeGravityAccelerationSTDY"                           
            [14] "TimeGravityAccelerationSTDZ"                           
            [15] "TimeBodyAccelerationJerkMeanX"                         
            [16] "TimeBodyAccelerationJerkMeanY"                         
            [17] "TimeBodyAccelerationJerkMeanZ"                         
            [18] "TimeBodyAccelerationJerkSTDX"                          
            [19] "TimeBodyAccelerationJerkSTDY"                          
            [20] "TimeBodyAccelerationJerkSTDZ"                          
            [21] "TimeBodyAngularSpeedMeanX"                             
            [22] "TimeBodyAngularSpeedMeanY"                             
            [23] "TimeBodyAngularSpeedMeanZ"                             
            [24] "TimeBodyAngularSpeedSTDX"                              
            [25] "TimeBodyAngularSpeedSTDY"                              
            [26] "TimeBodyAngularSpeedSTDZ"                              
            [27] "TimeBodyAngularAccelerationMeanX"                      
            [28] "TimeBodyAngularAccelerationMeanY"                      
            [29] "TimeBodyAngularAccelerationMeanZ"                      
            [30] "TimeBodyAngularAccelerationSTDX"                       
            [31] "TimeBodyAngularAccelerationSTDY"                       
            [32] "TimeBodyAngularAccelerationSTDZ"                       
            [33] "TimeBodyAccelerationMagnitudeMean"                     
            [34] "TimeBodyAccelerationMagnitudeSTD"                      
            [35] "TimeGravityAccelerationMagnitudeMean"                  
            [36] "TimeGravityAccelerationMagnitudeSTD"                   
            [37] "TimeBodyAccelerationJerkMagnitudeMean"                 
            [38] "TimeBodyAccelerationJerkMagnitudeSTD"                  
            [39] "TimeBodyAngularSpeedMagnitudeMean"                     
            [40] "TimeBodyAngularSpeedMagnitudeSTD"                      
            [41] "TimeBodyAngularAccelerationMagnitudeMean"              
            [42] "TimeBodyAngularAccelerationMagnitudeSTD"               
            [43] "FrequencyBodyAccelerationMeanX"                        
            [44] "FrequencyBodyAccelerationMeanY"                        
            [45] "FrequencyBodyAccelerationMeanZ"                        
            [46] "FrequencyBodyAccelerationSTDX"                         
            [47] "FrequencyBodyAccelerationSTDY"                         
            [48] "FrequencyBodyAccelerationSTDZ"                         
            [49] "FrequencyBodyAccelerationMeanFrequencyX"               
            [50] "FrequencyBodyAccelerationMeanFrequencyY"               
            [51] "FrequencyBodyAccelerationMeanFrequencyZ"               
            [52] "FrequencyBodyAccelerationJerkMeanX"                    
            [53] "FrequencyBodyAccelerationJerkMeanY"                    
            [54] "FrequencyBodyAccelerationJerkMeanZ"                    
            [55] "FrequencyBodyAccelerationJerkSTDX"                     
            [56] "FrequencyBodyAccelerationJerkSTDY"                     
            [57] "FrequencyBodyAccelerationJerkSTDZ"                     
            [58] "FrequencyBodyAccelerationJerkMeanFrequencyX"           
            [59] "FrequencyBodyAccelerationJerkMeanFrequencyY"           
            [60] "FrequencyBodyAccelerationJerkMeanFrequencyZ"           
            [61] "FrequencyBodyAngularSpeedMeanX"                        
            [62] "FrequencyBodyAngularSpeedMeanY"                        
            [63] "FrequencyBodyAngularSpeedMeanZ"                        
            [64] "FrequencyBodyAngularSpeedSTDX"                         
            [65] "FrequencyBodyAngularSpeedSTDY"                         
            [66] "FrequencyBodyAngularSpeedSTDZ"                         
            [67] "FrequencyBodyAngularSpeedMeanFrequencyX"               
            [68] "FrequencyBodyAngularSpeedMeanFrequencyY"               
            [69] "FrequencyBodyAngularSpeedMeanFrequencyZ"               
            [70] "FrequencyBodyAccelerationMagnitudeMean"                
            [71] "FrequencyBodyAccelerationMagnitudeSTD"                 
            [72] "FrequencyBodyAccelerationMagnitudeMeanFrequency"       
            [73] "FrequencyBodyAccelerationJerkMagnitudeMean"            
            [74] "FrequencyBodyAccelerationJerkMagnitudeSTD"             
            [75] "FrequencyBodyAccelerationJerkMagnitudeMeanFrequency"   
            [76] "FrequencyBodyAngularSpeedMagnitudeMean"                
            [77] "FrequencyBodyAngularSpeedMagnitudeSTD"                 
            [78] "FrequencyBodyAngularSpeedMagnitudeMeanFrequency"       
            [79] "FrequencyBodyAngularAccelerationMagnitudeMean"         
            [80] "FrequencyBodyAngularAccelerationMagnitudeSTD"          
            [81] "FrequencyBodyAngularAccelerationMagnitudeMeanFrequency"
            [82] "AngleTimeBodyAccelerationMeanGravity"                  
            [83] "AngleTimeBodyAccelerationJerkMeanGravityMean"          
            [84] "AngleTimeBodyAngularSpeedMeanGravityMean"              
            [85] "AngleTimeBodyAngularAccelerationMeanGravityMean"       
            [86] "AngleXGravityMean"                                     
            [87] "AngleYGravityMean"                                     
            [88] "AngleZGravityMean"
