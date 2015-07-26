Per the original data source:
The features selected for this data set come from the accelerometer and gyroscope 3-axial
raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time)
were captured at a constant rate of 50 Hz. Then they were filtered using a median filter
and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove 
noise. Similarly, the acceleration signal was then separated into body and gravity
acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass
Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in
time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude
of these three-dimensional signals were calculated using the Euclidean norm
(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals
producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag,
fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were used for this analysis are mean and standard deviations
of the above signals.  Means were then summarized across activity and subject.


Here is a list of all variables included (with column indices) in the final_data.txt 
data set and explanations about them.

These identify the activity and the subject that performed them.
1   activity_type
2	subject_id
3	activity_id

The rest of these variables capture appropriate force and acceleration
data from the participants in the study.  Means and standard deviations are 
each noted appropriately in the variable names.  These data show averages across
activity and subject.

4	tBodyAcc-Mean-X
5	tBodyAcc-Mean-Y
6	tBodyAcc-Mean-Z
7	tBodyAcc-StdDev-X
8	tBodyAcc-StdDev-Y
9	tBodyAcc-StdDev-Z
10	tGravityAcc-Mean-X
11	tGravityAcc-Mean-Y
12	tGravityAcc-Mean-Z
13	tGravityAcc-StdDev-X
14	tGravityAcc-StdDev-Y
15	tGravityAcc-StdDev-Z
16	tBodyAccJerk-Mean-X
17	tBodyAccJerk-Mean-Y
18	tBodyAccJerk-Mean-Z
19	tBodyAccJerk-StdDev-X
20	tBodyAccJerk-StdDev-Y
21	tBodyAccJerk-StdDev-Z
22	tBodyGyro-Mean-X
23	tBodyGyro-Mean-Y
24	tBodyGyro-Mean-Z
25	tBodyGyro-StdDev-X
26	tBodyGyro-StdDev-Y
27	tBodyGyro-StdDev-Z
28	tBodyGyroJerk-Mean-X
29	tBodyGyroJerk-Mean-Y
30	tBodyGyroJerk-Mean-Z
31	tBodyGyroJerk-StdDev-X
32	tBodyGyroJerk-StdDev-Y
33	tBodyGyroJerk-StdDev-Z
34	tBodyAccMag-Mean
35	tBodyAccMag-StdDev
36	tGravityAccMag-Mean
37	tGravityAccMag-StdDev
38	tBodyAccJerkMag-Mean
39	tBodyAccJerkMag-StdDev
40	tBodyGyroMag-Mean
41	tBodyGyroMag-StdDev
42	tBodyGyroJerkMag-Mean
43	tBodyGyroJerkMag-StdDev
44	fBodyAcc-Mean-X
45	fBodyAcc-Mean-Y
46	fBodyAcc-Mean-Z
47	fBodyAcc-StdDev-X
48	fBodyAcc-StdDev-Y
49	fBodyAcc-StdDev-Z
50	fBodyAcc-MeanFreq-X
51	fBodyAcc-MeanFreq-Y
52	fBodyAcc-MeanFreq-Z
53	fBodyAccJerk-Mean-X
54	fBodyAccJerk-Mean-Y
55	fBodyAccJerk-Mean-Z
56	fBodyAccJerk-StdDev-X
57	fBodyAccJerk-StdDev-Y
58	fBodyAccJerk-StdDev-Z
59	fBodyAccJerk-MeanFreq-X
60	fBodyAccJerk-MeanFreq-Y
61	fBodyAccJerk-MeanFreq-Z
62	fBodyGyro-Mean-X
63	fBodyGyro-Mean-Y
64	fBodyGyro-Mean-Z
65	fBodyGyro-StdDev-X
66	fBodyGyro-StdDev-Y
67	fBodyGyro-StdDev-Z
68	fBodyGyro-MeanFreq-X
69	fBodyGyro-MeanFreq-Y
70	fBodyGyro-MeanFreq-Z
71	fBodyAccMag-Mean
72	fBodyAccMag-StdDev
73	fBodyAccMag-MeanFreq
74	fBodyAccJerkMag-Mean
75	fBodyAccJerkMag-StdDev
76	fBodyAccJerkMag-MeanFreq
77	fBodyGyroMag-Mean
78	fBodyGyroMag-StdDev
79	fBodyGyroMag-MeanFreq
80	fBodyGyroJerkMag-Mean
81	fBodyGyroJerkMag-StdDev
82	fBodyGyroJerkMag-MeanFreq

Each activity is summarized below.  There were 30 subjects in the study.

1 WALKING
2 WALKING_UPSTAIRS
3 WALKING_DOWNSTAIRS
4 SITTING
5 STANDING
6 LAYING
