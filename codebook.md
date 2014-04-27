CodeBook
========

This codebook explains the 68 columns of the datafiles `tidy.txt` and `average.txt` that are produced by the 
R script `run_analysis.R` for peer assessment in Jeff Leek's Getting and Cleaning Data course in Coursera.
<https://class.coursera.org/getdata-002>

`tidy.txt` consolidates the collected readings into a single table, 
while `average.txt` shows the average reading for each subject and his/her activity

`tidy.txt` and `average.txt` records are ordered by **activitylabel** then **subject**

The column names and their descriptions are as following, in the exact order:

1. `activitylabel`: the label for the type of activity subjects are doing
2. `subject`: the users of the device which this data is collected

The following describes the columns 3-68:

| Column Index | Variable                 | Domain    | Relative | Sensor Type   | Jerk | Direction | Mean or St. Dev.   |
|:-------------|:-------------------------|:----------|:---------|:--------------|:-----|:----------|:-------------------|
| 3            | tbodyaccmeanx            | time      | body     | accelerometer |      | X         | mean               |
| 4            | tbodyaccmeany            | time      | body     | accelerometer |      | Y         | mean               |
| 5            | tbodyaccmeanz            | time      | body     | accelerometer |      | Z         | mean               |
| 6            | tbodyaccstdx             | time      | body     | accelerometer |      | X         | standard deviation |
| 7            | tbodyaccstdy             | time      | body     | accelerometer |      | Y         | standard deviation |
| 8            | tbodyaccstdz             | time      | body     | accelerometer |      | Z         | standard deviation |
| 9            | tgravityaccmeanx         | time      | gravity  | accelerometer |      | X         | mean               |
| 10           | tgravityaccmeany         | time      | gravity  | accelerometer |      | Y         | mean               |
| 11           | tgravityaccmeanz         | time      | gravity  | accelerometer |      | Z         | mean               |
| 12           | tgravityaccstdx          | time      | gravity  | accelerometer |      | X         | standard deviation |
| 13           | tgravityaccstdy          | time      | gravity  | accelerometer |      | Y         | standard deviation |
| 14           | tgravityaccstdz          | time      | gravity  | accelerometer |      | Z         | standard deviation |
| 15           | tbodyaccjerkmeanx        | time      | body     | accelerometer | jerk | X         | mean               |
| 16           | tbodyaccjerkmeany        | time      | body     | accelerometer | jerk | Y         | mean               |
| 17           | tbodyaccjerkmeanz        | time      | body     | accelerometer | jerk | Z         | mean               |
| 18           | tbodyaccjerkstdx         | time      | body     | accelerometer | jerk | X         | standard deviation |
| 19           | tbodyaccjerkstdy         | time      | body     | accelerometer | jerk | Y         | standard deviation |
| 20           | tbodyaccjerkstdz         | time      | body     | accelerometer | jerk | Z         | standard deviation |
| 21           | tbodygyromeanx           | time      | body     | gyroscope     |      | X         | mean               |
| 22           | tbodygyromeany           | time      | body     | gyroscope     |      | Y         | mean               |
| 23           | tbodygyromeanz           | time      | body     | gyroscope     |      | Z         | mean               |
| 24           | tbodygyrostdx            | time      | body     | gyroscope     |      | X         | standard deviation |
| 25           | tbodygyrostdy            | time      | body     | gyroscope     |      | Y         | standard deviation |
| 26           | tbodygyrostdz            | time      | body     | gyroscope     |      | Z         | standard deviation |
| 27           | tbodygyrojerkmeanx       | time      | body     | gyroscope     | jerk | X         | mean               |
| 28           | tbodygyrojerkmeany       | time      | body     | gyroscope     | jerk | Y         | mean               |
| 29           | tbodygyrojerkmeanz       | time      | body     | gyroscope     | jerk | Z         | mean               |
| 30           | tbodygyrojerkstdx        | time      | body     | gyroscope     | jerk | X         | standard deviation |
| 31           | tbodygyrojerkstdy        | time      | body     | gyroscope     | jerk | Y         | standard deviation |
| 32           | tbodygyrojerkstdz        | time      | body     | gyroscope     | jerk | Z         | standard deviation |
| 33           | tbodyaccmagmean          | time      | body     | accelerometer |      | magnitude | mean               |
| 34           | tbodyaccmagstd           | time      | body     | accelerometer |      | magnitude | standard deviation |
| 35           | tgravityaccmagmean       | time      | gravity  | accelerometer |      | magnitude | mean               |
| 36           | tgravityaccmagstd        | time      | gravity  | accelerometer |      | magnitude | standard deviation |
| 37           | tbodyaccjerkmagmean      | time      | body     | accelerometer | jerk | magnitude | mean               |
| 38           | tbodyaccjerkmagstd       | time      | body     | accelerometer | jerk | magnitude | standard deviation |
| 39           | tbodygyromagmean         | time      | body     | gyroscope     |      | magnitude | mean               |
| 40           | tbodygyromagstd          | time      | body     | gyroscope     |      | magnitude | standard deviation |
| 41           | tbodygyrojerkmagmean     | time      | body     | gyroscope     | jerk | magnitude | mean               |
| 42           | tbodygyrojerkmagstd      | time      | body     | gyroscope     | jerk | magnitude | standard deviation |
| 43           | fbodyaccmeanx            | frequency | body     | accelerometer |      | X         | mean               |
| 44           | fbodyaccmeany            | frequency | body     | accelerometer |      | Y         | mean               |
| 45           | fbodyaccmeanz            | frequency | body     | accelerometer |      | Z         | mean               |
| 46           | fbodyaccstdx             | frequency | body     | accelerometer |      | X         | standard deviation |
| 47           | fbodyaccstdy             | frequency | body     | accelerometer |      | Y         | standard deviation |
| 48           | fbodyaccstdz             | frequency | body     | accelerometer |      | Z         | standard deviation |
| 49           | fbodyaccjerkmeanx        | frequency | body     | accelerometer | jerk | X         | mean               |
| 50           | fbodyaccjerkmeany        | frequency | body     | accelerometer | jerk | Y         | mean               |
| 51           | fbodyaccjerkmeanz        | frequency | body     | accelerometer | jerk | Z         | mean               |
| 52           | fbodyaccjerkstdx         | frequency | body     | accelerometer | jerk | X         | standard deviation |
| 53           | fbodyaccjerkstdy         | frequency | body     | accelerometer | jerk | Y         | standard deviation |
| 54           | fbodyaccjerkstdz         | frequency | body     | accelerometer | jerk | Z         | standard deviation |
| 55           | fbodygyromeanx           | frequency | body     | gyroscope     |      | X         | mean               |
| 56           | fbodygyromeany           | frequency | body     | gyroscope     |      | Y         | mean               |
| 57           | fbodygyromeanz           | frequency | body     | gyroscope     |      | Z         | mean               |
| 58           | fbodygyrostdx            | frequency | body     | gyroscope     |      | X         | standard deviation |
| 59           | fbodygyrostdy            | frequency | body     | gyroscope     |      | Y         | standard deviation |
| 60           | fbodygyrostdz            | frequency | body     | gyroscope     |      | Z         | standard deviation |
| 61           | fbodyaccmagmean          | frequency | body     | accelerometer |      | magnitude | mean               |
| 62           | fbodyaccmagstd           | frequency | body     | accelerometer |      | magnitude | standard deviation |
| 63           | fbodybodyaccjerkmagmean  | frequency | body     | accelerometer | jerk | magnitude | mean               |
| 64           | fbodybodyaccjerkmagstd   | frequency | body     | accelerometer | jerk | magnitude | standard deviation |
| 65           | fbodybodygyromagmean     | frequency | body     | gyroscope     |      | magnitude | mean               |
| 66           | fbodybodygyromagstd      | frequency | body     | gyroscope     |      | magnitude | standard deviation |
| 67           | fbodybodygyrojerkmagmean | frequency | body     | gyroscope     | jerk | magnitude | mean               |
| 68           | fbodybodygyrojerkmagstd  | frequency | body     | gyroscope     | jerk | magnitude | standard deviation |
