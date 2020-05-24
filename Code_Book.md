# Getting-and-Cleaning-Data-Course-Project

Author: SYZ

==================================================================
#Description
Explanatory information for Coursera Getting-and-Cleaning-Data-Course-Project

==================================================================
#Full dataset (link)
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

==================================================================
# Dataset description
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain. See 'features_info.txt' for more details. 

==================================================================
#Variable description:
- 10299 obs. of  68 variables
-Names of variables:
[1] "activity_labels"                                              
 [2] "subject"                                                      
 [3] "timeBodyaccelerometermean()-X"                                
 [4] "timeBodyaccelerometermean()-Y"                                
 [5] "timeBodyaccelerometermean()-Z"                                
 [6] "timeBodyaccelerometerstandard deviation()-X"                  
 [7] "timeBodyaccelerometerstandard deviation()-Y"                  
 [8] "timeBodyaccelerometerstandard deviation()-Z"                  
 [9] "timeGravityaccelerometermean()-X"                             
[10] "timeGravityaccelerometermean()-Y"                             
[11] "timeGravityaccelerometermean()-Z"                             
[12] "timeGravityaccelerometerstandard deviation()-X"               
[13] "timeGravityaccelerometerstandard deviation()-Y"               
[14] "timeGravityaccelerometerstandard deviation()-Z"               
[15] "timeBodyaccelerometerJerkmean()-X"                            
[16] "timeBodyaccelerometerJerkmean()-Y"                            
[17] "timeBodyaccelerometerJerkmean()-Z"                            
[18] "timeBodyaccelerometerJerkstandard deviation()-X"              
[19] "timeBodyaccelerometerJerkstandard deviation()-Y"              
[20] "timeBodyaccelerometerJerkstandard deviation()-Z"              
[21] "timeBodygyroscopemean()-X"                                    
[22] "timeBodygyroscopemean()-Y"                                    
[23] "timeBodygyroscopemean()-Z"                                    
[24] "timeBodygyroscopestandard deviation()-X"                      
[25] "timeBodygyroscopestandard deviation()-Y"                      
[26] "timeBodygyroscopestandard deviation()-Z"                      
[27] "timeBodygyroscopeJerkmean()-X"                                
[28] "timeBodygyroscopeJerkmean()-Y"                                
[29] "timeBodygyroscopeJerkmean()-Z"                                
[30] "timeBodygyroscopeJerkstandard deviation()-X"                  
[31] "timeBodygyroscopeJerkstandard deviation()-Y"                  
[32] "timeBodygyroscopeJerkstandard deviation()-Z"                  
[33] "timeBodyaccelerometerM]magnitudemean()"                       
[34] "timeBodyaccelerometerM]magnitudestandard deviation()"         
[35] "timeGravityaccelerometerM]magnitudemean()"                    
[36] "timeGravityaccelerometerM]magnitudestandard deviation()"      
[37] "timeBodyaccelerometerJerkM]magnitudemean()"                   
[38] "timeBodyaccelerometerJerkM]magnitudestandard deviation()"     
[39] "timeBodygyroscopeM]magnitudemean()"                           
[40] "timeBodygyroscopeM]magnitudestandard deviation()"             
[41] "timeBodygyroscopeJerkM]magnitudemean()"                       
[42] "timeBodygyroscopeJerkM]magnitudestandard deviation()"         
[43] "frequencyBodyaccelerometermean()-X"                           
[44] "frequencyBodyaccelerometermean()-Y"                           
[45] "frequencyBodyaccelerometermean()-Z"                           
[46] "frequencyBodyaccelerometerstandard deviation()-X"             
[47] "frequencyBodyaccelerometerstandard deviation()-Y"             
[48] "frequencyBodyaccelerometerstandard deviation()-Z"             
[49] "frequencyBodyaccelerometerJerkmean()-X"                       
[50] "frequencyBodyaccelerometerJerkmean()-Y"                       
[51] "frequencyBodyaccelerometerJerkmean()-Z"                       
[52] "frequencyBodyaccelerometerJerkstandard deviation()-X"         
[53] "frequencyBodyaccelerometerJerkstandard deviation()-Y"         
[54] "frequencyBodyaccelerometerJerkstandard deviation()-Z"         
[55] "frequencyBodygyroscopemean()-X"                               
[56] "frequencyBodygyroscopemean()-Y"                               
[57] "frequencyBodygyroscopemean()-Z"                               
[58] "frequencyBodygyroscopestandard deviation()-X"                 
[59] "frequencyBodygyroscopestandard deviation()-Y"                 
[60] "frequencyBodygyroscopestandard deviation()-Z"                 
[61] "frequencyBodyaccelerometerM]magnitudemean()"                  
[62] "frequencyBodyaccelerometerM]magnitudestandard deviation()"    
[63] "frequencybodyaccelerometerJerkM]magnitudemean()"              
[64] "frequencybodyaccelerometerJerkM]magnitudestandard deviation()"
[65] "frequencybodygyroscopeM]magnitudemean()"                      
[66] "frequencybodygyroscopeM]magnitudestandard deviation()"        
[67] "frequencybodygyroscopeJerkM]magnitudemean()"                  
[68] "frequencybodygyroscopeJerkM]magnitudestandard deviation()" 

-Explanation of variables:
[1] "activity_labels": indicates activity name (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
[2] ''subject'': identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
others: smartphone sensor signal values