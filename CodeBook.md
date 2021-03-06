How to read variables - attempt to summarize:

1. 't' or 'f'          - time domain signals or frequency domain signals. 'f' signals are derived signals(Fast Fourier Transform was applied)
2.  BodyAcc/GravityAcc - body/gravity acceleration(derived from acceleration signal by low pass Butterworth filter with a corner frequency of 0.3 Hz)
3.  Acc/Gyro + Jerk    - body linear acceleration and angular velocity Jerk signals(the body linear acceleration and angular velocity were derived in time to obtain these 2 signals)
4.  Mag                - magnitude related(calculated using the Euclidean norm)(tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag)
5. mean_value - mean value
6. standard_deviation standard deviation

Full list(brackets at the end of line contain name of original column(see features.txt)):

1. SUBJECT_ID - An identifier of the subject who carried out the experiment (int 1-30)
2. ACTIVITY\_NAME - Subject activity (Factor with 6 levels: WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING, STANDING, LAYING)
- UOMs(Units Of Measure) of variables below correspond to original variables.
- variables below are averaged across SUBJECT\_ID, ACTIVITY\_NAME groups.
- variables below are timed domain signals
3. tBodyAcc\_mean\_value\_X - body acceleration, mean value, X axis (tBodyAcc-mean()-X)
4. tBodyAcc\_mean\_value\_Y - body acceleration, mean value, Y axis (tBodyAcc-mean()-Y)
5. tBodyAcc\_mean\_value\_Z - body acceleration, mean value, Z axis (tBodyAcc-mean()-Z)
6. tBodyAcc\_standard\_deviation\_X - body acceleration, standard deviation, X axis (tBodyAcc-std()-X)
7. tBodyAcc\_standard\_deviation\_Y - body acceleration, standard deviation, Y axis (tBodyAcc-std()-Y)
8. tBodyAcc\_standard\_deviation\_Z - body acceleration, standard deviation, Z axis (tBodyAcc-std()-Z)
9. tGravityAcc\_mean\_value\_X - gravity acceleration, mean value, X axis (tGravityAcc-mean()-X)
10. tGravityAcc\_mean\_value\_Y - gravity acceleration, mean value, Y axis (tGravityAcc-mean()-Y)
11. tGravityAcc\_mean\_value\_Z - gravity acceleration, mean value, Z axis (tGravityAcc-mean()-Z)
12. tGravityAcc\_standard\_deviation\_X - gravity acceleration, mean value, X axis (tGravityAcc-std()-X)
13. tGravityAcc\_standard\_deviation\_Y - gravity acceleration, mean value, Y axis (tGravityAcc-std()-Y)
14. tGravityAcc\_standard\_deviation\_Z - gravity acceleration, mean value, Y axis (tGravityAcc-std()-Z)
15. tBodyAccJerk\_mean\_value\_X - body acceleration, jerk component, mean value, X axis (tBodyAccJerk-mean()-X)
16. tBodyAccJerk\_mean\_value\_Y - body acceleration, jerk component, mean value, Y axis (tBodyAccJerk-mean()-Y)
17. tBodyAccJerk\_mean\_value\_Z - body acceleration, jerk component, mean value, Z axis (tBodyAccJerk-mean()-Z)
18. tBodyAccJerk\_standard\_deviation\_X - body acceleration, jerk component, standard deviation, X axis (tBodyAccJerk-std()-X)
19. tBodyAccJerk\_standard\_deviation\_Y - body acceleration, jerk component, standard deviation, Y axis (tBodyAccJerk-std()-Y)
20. tBodyAccJerk\_standard\_deviation\_Z - body acceleration, jerk component, standard deviation, Z axis (tBodyAccJerk-std()-Z)
21. tBodyGyro\_mean\_value\_X - Gyro signal(?), mean value, X axis  (tBodyGyro-mean()-X)
22. tBodyGyro\_mean\_value\_Y - Gyro signal(?), mean value, Y axis  (tBodyGyro-mean()-Y)
23. tBodyGyro\_mean\_value\_Z - Gyro signal(?), mean value, Z axis  (tBodyGyro-mean()-Z)
24. tBodyGyro\_standard\_deviation\_X - Gyro signal(?), standard deviation, X axis (tBodyGyro-std()-X)
25. tBodyGyro\_standard\_deviation\_Y - Gyro signal(?), standard deviation, Y axis (tBodyGyro-std()-Y)
26. tBodyGyro\_standard\_deviation\_Z - Gyro signal(?), standard deviation, Z axis (tBodyGyro-std()-Z)
27. tBodyGyroJerk\_mean\_value\_X - Gyro signal(?), jerk component, mean value, X axis (tBodyGyroJerk-mean()-X)
28. tBodyGyroJerk\_mean\_value\_Y - Gyro signal(?), jerk component, mean value, Y axis (tBodyGyroJerk-mean()-Y)
29. tBodyGyroJerk\_mean\_value\_Z - Gyro signal(?), jerk component, mean value, Z axis (tBodyGyroJerk-mean()-Z)
30. tBodyGyroJerk\_standard\_deviation\_X - Gyro signal(?), jerk component, standard deviation, X axis (tBodyGyroJerk-std()-X)
31. tBodyGyroJerk\_standard\_deviation\_Y - Gyro signal(?), jerk component, standard deviation, Y axis (tBodyGyroJerk-std()-Y)
32. tBodyGyroJerk\_standard\_deviation\_Z - Gyro signal(?), jerk component, standard deviation, Z axis (tBodyGyroJerk-std()-Z)
33. tBodyAccMag\_mean\_value - body acceleration magnitude, mean value (tBodyAccMag-mean())
34. tBodyAccMag\_standard\_deviation body acceleration magnitude, standard deviation (tBodyAccMag-std())
35. tGravityAccMag\_mean\_value - gravity acceleration magnitude, mean value (tGravityAccMag-mean())
36. tGravityAccMag\_standard\_deviation  - gravity acceleration magnitude, standard deviation (tGravityAccMag-std())
37. tBodyAccJerkMag\_mean\_value - body acceleration, jerk component, magnitude, mean value (tBodyAccJerkMag-mean())
38. tBodyAccJerkMag\_standard\_deviation - body acceleration, jerk component, magnitude, standard deviation (tBodyAccJerkMag-std())
39. tBodyGyroMag\_mean\_value - gyro signal(?), magnitude, mean value (tBodyGyroMag-mean())
40. tBodyGyroMag\_standard\_deviation - gyro signal(?), magnitude, standard deviation (tBodyGyroMag-std())
41. tBodyGyroJerkMag\_mean\_value - gyro signal, jerk component, magnitude, mean value (tBodyGyroJerkMag-mean())
42. tBodyGyroJerkMag\_standard\_deviation - gyro signal, jerk component, magnitude, standard deviation (tBodyGyroJerkMag-std())
- variables below are frequency domain signals
43. fBodyAcc\_mean\_value\_X - body acceleration, mean value, X axis (fBodyAcc-mean()-X)
44. fBodyAcc\_mean\_value\_Y - body acceleration, mean value, Y axis (fBodyAcc-mean()-Y)
45. fBodyAcc\_mean\_value\_Z - body acceleration, mean value, Z axis (fBodyAcc-mean()-Z)
46. fBodyAcc\_standard\_deviation_X - body acceleration, standard deviation, X axis (fBodyAcc-std()-X)
47. fBodyAcc\_standard\_deviation_Y - body acceleration, standard deviation, Y axis (fBodyAcc-std()-Y)
48. fBodyAcc\_standard\_deviation_Z - body acceleration, standard deviation, Z axis (fBodyAcc-std()-Z)
49. fBodyAccJerk\_mean\_value\_X - body acceleration, jerk component, mean value, X axis (fBodyAccJerk-mean()-X)
50. fBodyAccJerk\_mean\_value\_Y - body acceleration, jerk component, mean value, Y axis (fBodyAccJerk-mean()-Y)
51. fBodyAccJerk\_mean\_value\_Z - body acceleration, jerk component, mean value, Z axis (fBodyAccJerk-mean()-Z)
52. fBodyAccJerk\_standard\_deviation\_X - body acceleration, jerk component, standard deviation, X axis (fBodyAccJerk-std()-X)
53. fBodyAccJerk\_standard\_deviation\_Y - body acceleration, jerk component, standard deviation, Y axis (fBodyAccJerk-std()-Y)
54. fBodyAccJerk\_standard\_deviation\_Z - body acceleration, jerk component, standard deviation, Z axis (fBodyAccJerk-std()-Z)
55. fBodyGyro\_mean\_value\_X - gyro signal(?), mean value, X axis (fBodyGyro-mean()-X)
56. fBodyGyro\_mean\_value\_Y - gyro signal(?), mean value, Y axis (fBodyGyro-mean()-Y)
57. fBodyGyro\_mean\_value\_Z - gyro signal(?), mean value, Z axis (fBodyGyro-mean()-Z)
58. fBodyGyro\_standard\_deviation\_X - gyro signal(?), standard deviation, X axis (fBodyGyro-std()-X)
59. fBodyGyro\_standard\_deviation\_Y - gyro signal(?), standard deviation, Y axis (fBodyGyro-std()-Y)
60. fBodyGyro\_standard\_deviation\_Z - gyro signal(?), standard deviation, Z axis (fBodyGyro-std()-Z)
61. fBodyAccMag\_mean\_value - body acceleration, magnitude, mean value (fBodyAccMag-mean())
62. fBodyAccMag\_standard\_deviation - body acceleration, magnitude, standard deviation (fBodyAccMag-mean())
63. fBodyBodyAccJerkMag\_mean\_value - body acceleration, jerk component, magnitude, mean value (fBodyBodyAccJerkMag-mean())
64. fBodyBodyAccJerkMag\_standard\_deviation - body acceleration, jerk component, magnitude, standard deviation(fBodyBodyAccJerkMag-std())
65. fBodyBodyGyroMag\_mean\_value - gyro signal(?), magnitude, mean value (fBodyBodyGyroMag-mean())
66. fBodyBodyGyroMag\_standard\_deviation - gyro signal(?), magnitude, standard deviation (fBodyBodyGyroMag-std())
67. fBodyBodyGyroJerkMag\_mean\_value - gyro signal(?), jerk component, magnitude, mean value (fBodyBodyGyroJerkMag-mean())
68. fBodyBodyGyroJerkMag\_standard\_deviation - gyro signal(?), jerk component, magnitude, standard deviation (fBodyBodyGyroJerkMag-std())