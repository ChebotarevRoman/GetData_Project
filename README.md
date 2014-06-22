# Readme
## Getting and Cleaning Data Coursera Project

<<<<<<< HEAD

1. **Goals**
Build tidy data set with the average of each variable for each activity and each subject using UCI Human Activity Recognition Using Smartphones Data Set [1, 2]
*Activity dataset doesn't included in this repository. See CodeBook for link and descriptions*

2. **Files Description**
- "run_analys.R" - script that performs all calculations
- "activity_dataset.txt" - resulting tidy dataset
- "CodeBook.md" - detailed description of all variables and transformations
- "README.md" - this file

3. **How it works**

Script 'run_analysis.R' performs calculation of average values for each subject and activity. Calculations performs only on 'mean' and 'std' measurement features.
Script does the following things:
1. Script reads both training and test sets, measurement feature names and activity labels description.
2. Filtering measurement to hold on only mean and std error features 
3. Subject id, activity description (via its label) merges to datasets
4. Test and train data combines in one dataset
5. Calculating average of every measurement across subject and activity
6. *detailed description provided in CodeBook file*

4. **References**
- [1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
- [2] [http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones](UCI Human Activity Recognition Using Smartphones Data Set)
=======
'run_analysis.R' performs calculation of average values for each subject and activity. Calculations performs only on 'mean' and 'std' measurement features.

Script does the following things:
* script reads both training and test sets, measurement feature names and activity labels description
* filtering measurement to hold on only mean and std error features 
* subject id, activity description (via its label) merges to datasets
* test and train data combines in one dataset
* calculating average of every measurement across subject and activity
>>>>>>> 2e9ea90668ff4c904a9f23704ca46620aec57d4e
