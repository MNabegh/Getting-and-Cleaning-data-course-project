# Code book for Getting and Cleaning data course project

### Measurements



## Transformations

The original data can be found at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following operations where done to tidy the dataset and get a more ready to work with set in the following order after downloading it:

1. Read only the data with information about means and standard deviation into R.
1. The feature names were changed to be more descriptive:
	- Special characters dashes and parentheses (`-`, `(` and `)` ) were removed.
	- The initials *t* and *f* were replaced with *timeDomain* and *frequencyDomain* respectively.
	- *Acc*, *Gyro*, *Mag*, *Freq*, *mean*, *std* and *BodyBody* were replaced with *Accelerometer*, *Gyroscope*, *Magnitude*, *Frequency*, *Mean*, *StandardDeviation* and *Body*.
1.