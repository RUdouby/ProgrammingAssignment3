# ProgrammingAssignment3
Programming Submission for Course 3: Getting and Cleaning Data

####################################################

This is the submission for the Programming Assignment for Course 3: Getting and Cleaning Data

####################################################

Using R version 3.5.1 (2018-07-02)

The goal of this assignment is to be able to take messy data from multiple sources, read it into R, transform 
the data into a tidy data, and produce output that will be usable for analysis.

The data contains different motion measurements based off of smartphone censors. Participants engaged in six 
different activities: Walking, Walking_Upstairs, Walking_Downstairs, Sitting, Standing, Laying.

The run_analysis function reads in data from six different datasets: subject_test, X_test, y_test, subject_train,
X_train, and y_test. It also reads in the six activity labels from the activity_labels file and the censor
measurement names from the features file. The function then combines, labels and organizes the data. It proceeds
to subset on only the variables associated with mean and standard deviation. It then takes the mean of each
variable based on the subject and activity type. Finally it produces output in a tidy text file.

The data is tidy because it (1) allocates each variable to its own column, (2) allows each observation to be
stored in one row (i.e. the average of each variable for one subject's specific activity is in a single row),
and (3) the output forms a table complete with variable names as headers. 

The associated codebook explains the original data, the transformations used to clean it, the variables and
setup of the final tidy data output.

Below is the License for the datasets being used:
========
Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.
