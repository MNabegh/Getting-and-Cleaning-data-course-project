# Code book for Getting and Cleaning data course project

The dataset explained in this code book can be found `tidy_data.txt`

The output dataset is described in the [Data](#data) section, its variables are listed in the [Variables](#variables) section, and the transformations that were done to the original data to get the output dataset are stated in the [Transformations](#transformations) section.

## Data <a name="data"></a>
The `tidy_data.txt` data file is a text file, containing space-separated values.

The first row contains the variables' names, which are listed and described in the [Variables](#variables) section, and the rest contain the values of these variables. 

## Variables <a name="variables"></a>

Each row contains, for a given subject and activity name, 79 mean of recorded signal measurements.

### Identifiers <a name="identifiers"></a>

- **subject**

	Subject identifier, integer, ranges from 1 to 30.

- **activity**

	Activity identifier, string with 6 possible values: 
	1. **WALKING**: subject was walking
	1. **WALKING_UPSTAIRS**: subject was walking upstairs
	1. **WALKING_DOWNSTAIRS**: subject was walking downstairs
	1. **SITTING**: subject was sitting
	1. **STANDING**: subject was standing
	1. **LAYING**: subject was laying

### Measurements

All measurements are floating-point values, normalised and bounded within [-1,1].

All the measurements in the `tidy_dataset.txt` file are the mean of all the recorded values.

Some Magnitudes are three dimensional X, Y and Z.

The measurements are recorded in time domain as reported by the devices and the frequency domain by applying Fast Fourier Transform(FFT) to the time domain values.

#### Time domain signals

- Mean and Standard deviation of time domain body acceleration in the X, Y and Z directions:
	- *timeDomainBodyAccelerometerMeanX*
	- *timeDomainBodyAccelerometerMeanY*
	- *timeDomainBodyAccelerometerMeanZ*
	- *timeDomainBodyAccelerometerStandardDeviationX*
	- *timeDomainBodyAccelerometerStandardDeviationY*
	- *timeDomainBodyAccelerometerStandardDeviationZ*

- Mean and Standard deviation of time domain gravity acceleration in the X, Y and Z directions:
	- *timeDomainGravityAccelerometerMeanX*
	- *timeDomainGravityAccelerometerMeanY*
	- *timeDomainGravityAccelerometerMeanZ*
	- *timeDomainGravityAccelerometerStandardDeviationX*
	- *timeDomainGravityAccelerometerStandardDeviationY*
	- *timeDomainGravityAccelerometerStandardDeviationZ*

- Mean and Standard deviation of time-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- *timeDomainBodyAccelerometerJerkMeanX*
	- *timeDomainBodyAccelerometerJerkMeanY*
	- *timeDomainBodyAccelerometerJerkMeanZ*
	- *timeDomainBodyAccelerometerJerkStandardDeviationX*
	- *timeDomainBodyAccelerometerJerkStandardDeviationY*
	- *timeDomainBodyAccelerometerJerkStandardDeviationZ*

- Mean and Standard deviation of time-domain body angular velocity in the X, Y and Z directions:

	- *timeDomainBodyGyroscopeMeanX*
	- *timeDomainBodyGyroscopeMeanY*
	- *timeDomainBodyGyroscopeMeanZ*
	- *timeDomainBodyGyroscopeStandardDeviationX*
	- *timeDomainBodyGyroscopeStandardDeviationY*
	- *timeDomainBodyGyroscopeStandardDeviationZ*

- Mean and Standard deviation of time-domain body angular velocity jerk (derivation of the angular velocity in time) in the X, Y and Z directions:

	- *timeDomainBodyGyroscopeJerkMeanX*
	- *timeDomainBodyGyroscopeJerkMeanY*
	- *timeDomainBodyGyroscopeJerkMeanZ*
	- *timeDomainBodyGyroscopeJerkStandardDeviationX*
	- *timeDomainBodyGyroscopeJerkStandardDeviationY*
	- *timeDomainBodyGyroscopeJerkStandardDeviationZ*

- Mean and standard deviation of the time-domain magnitude of body acceleration:

	- *timeDomainBodyAccelerometerMagnitudeMean*
	- *timeDomainBodyAccelerometerMagnitudeStandardDeviation*

- Mean and standard deviation of the time-domain magnitude of gravity acceleration:

	- *timeDomainGravityAccelerometerMagnitudeMean*
	- *timeDomainGravityAccelerometerMagnitudeStandardDeviation*

- Mean and standard deviation of the time-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- *timeDomainBodyAccelerometerJerkMagnitudeMean*
	- *timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation*

- Mean and standard deviation of the time-domain magnitude of body angular velocity:

	- *timeDomainBodyGyroscopeMagnitudeMean*
	- *timeDomainBodyGyroscopeMagnitudeStandardDeviation*

- Mean and standard deviation of the time-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- *timeDomainBodyGyroscopeJerkMagnitudeMean*
	- *timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation*

#### Frequency-domain signals

- Mean, standard deviation and weighted average of frequency-domain body acceleration in the X, Y and Z directions:

	- *frequencyDomainBodyAccelerometerMeanX*
	- *frequencyDomainBodyAccelerometerMeanY*
	- *frequencyDomainBodyAccelerometerMeanZ*
	- *frequencyDomainBodyAccelerometerStandardDeviationX*
	- *frequencyDomainBodyAccelerometerStandardDeviationY*
	- *frequencyDomainBodyAccelerometerStandardDeviationZ*
	- *frequencyDomainBodyAccelerometerMeanFrequencyX*
	- *frequencyDomainBodyAccelerometerMeanFrequencyY*
	- *frequencyDomainBodyAccelerometerMeanFrequencyZ*

- Mean, standard deviation and weighted average of  frequency-domain body acceleration jerk (derivation of the acceleration in time) in the X, Y and Z directions:

	- *frequencyDomainBodyAccelerometerJerkMeanX*
	- *frequencyDomainBodyAccelerometerJerkMeanY*
	- *frequencyDomainBodyAccelerometerJerkMeanZ*
	- *frequencyDomainBodyAccelerometerJerkStandardDeviationX*
	- *frequencyDomainBodyAccelerometerJerkStandardDeviationY*
	- *frequencyDomainBodyAccelerometerJerkStandardDeviationZ*
	- *frequencyDomainBodyAccelerometerJerkMeanFrequencyX*
	- *frequencyDomainBodyAccelerometerJerkMeanFrequencyY*
	- *frequencyDomainBodyAccelerometerJerkMeanFrequencyZ*

- Mean, standard deviation and weighted average of frequency-domain body angular velocity in the X, Y and Z directions:

	- *frequencyDomainBodyGyroscopeMeanX*
	- *frequencyDomainBodyGyroscopeMeanY*
	- *frequencyDomainBodyGyroscopeMeanZ*
	- *frequencyDomainBodyGyroscopeStandardDeviationX*
	- *frequencyDomainBodyGyroscopeStandardDeviationY*
	- *frequencyDomainBodyGyroscopeStandardDeviationZ*
	- *frequencyDomainBodyGyroscopeMeanFrequencyX*
	- *frequencyDomainBodyGyroscopeMeanFrequencyY*
	- *frequencyDomainBodyGyroscopeMeanFrequencyZ*

- Mean, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration:

	- *frequencyDomainBodyAccelerometerMagnitudeMean*
	- *frequencyDomainBodyAccelerometerMagnitudeStandardDeviation*
	- *frequencyDomainBodyAccelerometerMagnitudeMeanFrequency*

- Mean, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body acceleration jerk (derivation of the acceleration in time):

	- *frequencyDomainBodyAccelerometerJerkMagnitudeMean*
	- *frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation*
	- *frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency*

- Mean, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity:

	- *frequencyDomainBodyGyroscopeMagnitudeMean*
	- *frequencyDomainBodyGyroscopeMagnitudeStandardDeviation*
	- *frequencyDomainBodyGyroscopeMagnitudeMeanFrequency*

- Mean, standard deviation, and weighted average of the frequency components of the frequency-domain magnitude of body angular velocity jerk (derivation of the angular velocity in time):

	- *frequencyDomainBodyGyroscopeJerkMagnitudeMean*
	- *frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation*
	- *frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency*



## Transformations <a name="transformations"></a>

The original data can be found at
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

The following operations where done to tidy the dataset and get a more ready to work with set in the following order after downloading it:

1. Read only the data with information about means and standard deviation into R.
1. The feature names were changed to be more descriptive:
	- Special characters dashes and parentheses (`-`, `(` and `)` ) were removed.
	- The initials *t* and *f* were replaced with *timeDomain* and *frequencyDomain* respectively.
	- *Acc*, *Gyro*, *Mag*, *Freq*, *mean*, *std* and *BodyBody* were replaced with *Accelerometer*, *Gyroscope*, *Magnitude*, *Frequency*, *Mean*, *StandardDeviation* and *Body*.
1.