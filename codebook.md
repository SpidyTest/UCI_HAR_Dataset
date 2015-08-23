# Code Book

## ID Fields

* `subject` - The participant ("subject") ID
* `activity` - The label of the activity performed when the corresponding measurements were taken

## Extracted Feature Fields

"feature: tBodyAcc-mean()-X  column index: 4"
"feature: tBodyAcc-mean()-Y  column index: 5"
"feature: tBodyAcc-mean()-Z  column index: 6"
"feature: tGravityAcc-mean()-X  column index: 44"
"feature: tGravityAcc-mean()-Y  column index: 45"
"feature: tGravityAcc-mean()-Z  column index: 46"
"feature: tBodyAccJerk-mean()-X  column index: 84"
"feature: tBodyAccJerk-mean()-Y  column index: 85"
"feature: tBodyAccJerk-mean()-Z  column index: 86"
"feature: tBodyGyro-mean()-X  column index: 124"
"feature: tBodyGyro-mean()-Y  column index: 125"
"feature: tBodyGyro-mean()-Z  column index: 126"
"feature: tBodyGyroJerk-mean()-X  column index: 164"
"feature: tBodyGyroJerk-mean()-Y  column index: 165"
"feature: tBodyGyroJerk-mean()-Z  column index: 166"
"feature: tBodyAccMag-mean()  column index: 202"
"feature: tGravityAccMag-mean()  column index: 215"
"feature: tBodyAccJerkMag-mean()  column index: 228"
"feature: tBodyGyroMag-mean()  column index: 241"
"feature: tBodyGyroJerkMag-mean()  column index: 254"
"feature: fBodyAcc-mean()-X  column index: 269"
"feature: fBodyAcc-mean()-Y  column index: 270"
"feature: fBodyAcc-mean()-Z  column index: 271"
"feature: fBodyAcc-meanFreq()-X  column index: 348"
"feature: fBodyAcc-meanFreq()-Y  column index: 349"
"feature: fBodyAcc-meanFreq()-Z  column index: 350"
"feature: fBodyAccJerk-mean()-X  column index: 427"
"feature: fBodyAccJerk-mean()-Y  column index: 428"
"feature: fBodyAccJerk-mean()-Z  column index: 429"
"feature: fBodyAccJerk-meanFreq()-X  column index: 504"
"feature: fBodyAccJerk-meanFreq()-Y  column index: 517"
"feature: fBodyAccJerk-meanFreq()-Z  column index: 530"
"feature: fBodyGyro-mean()-X  column index: 543"
"feature: fBodyGyro-mean()-Y  column index: 1"
"feature: fBodyGyro-mean()-Z  column index: 2"
"feature: fBodyGyro-meanFreq()-X  column index: 3"
"feature: fBodyGyro-meanFreq()-Y  column index: 41"
"feature: fBodyGyro-meanFreq()-Z  column index: 42"
"feature: fBodyAccMag-mean()  column index: 43"
"feature: fBodyAccMag-meanFreq()  column index: 81"
"feature: fBodyBodyAccJerkMag-mean()  column index: 82"
"feature: fBodyBodyAccJerkMag-meanFreq()  column index: 83"
"feature: fBodyBodyGyroMag-mean()  column index: 121"
"feature: fBodyBodyGyroMag-meanFreq()  column index: 122"
"feature: fBodyBodyGyroJerkMag-mean()  column index: 123"
"feature: fBodyBodyGyroJerkMag-meanFreq()  column index: 161"
"feature: tBodyAcc-std()-X  column index: 162"
"feature: tBodyAcc-std()-Y  column index: 163"
"feature: tBodyAcc-std()-Z  column index: 201"
"feature: tGravityAcc-std()-X  column index: 214"
"feature: tGravityAcc-std()-Y  column index: 227"
"feature: tGravityAcc-std()-Z  column index: 240"
"feature: tBodyAccJerk-std()-X  column index: 253"
"feature: tBodyAccJerk-std()-Y  column index: 266"
"feature: tBodyAccJerk-std()-Z  column index: 267"
"feature: tBodyGyro-std()-X  column index: 268"
"feature: tBodyGyro-std()-Y  column index: 294"
"feature: tBodyGyro-std()-Z  column index: 295"
"feature: tBodyGyroJerk-std()-X  column index: 296"
"feature: tBodyGyroJerk-std()-Y  column index: 345"
"feature: tBodyGyroJerk-std()-Z  column index: 346"
"feature: tBodyAccMag-std()  column index: 347"
"feature: tGravityAccMag-std()  column index: 373"
"feature: tBodyAccJerkMag-std()  column index: 374"
"feature: tBodyGyroMag-std()  column index: 375"
"feature: tBodyGyroJerkMag-std()  column index: 424"
"feature: fBodyAcc-std()-X  column index: 425"
"feature: fBodyAcc-std()-Y  column index: 426"
"feature: fBodyAcc-std()-Z  column index: 452"
"feature: fBodyAccJerk-std()-X  column index: 453"
"feature: fBodyAccJerk-std()-Y  column index: 454"
"feature: fBodyAccJerk-std()-Z  column index: 503"
"feature: fBodyGyro-std()-X  column index: 513"
"feature: fBodyGyro-std()-Y  column index: 516"
"feature: fBodyGyro-std()-Z  column index: 526"
"feature: fBodyAccMag-std()  column index: 529"
"feature: fBodyBodyAccJerkMag-std()  column index: 539"
"feature: fBodyBodyGyroMag-std()  column index: 542"
"feature: fBodyBodyGyroJerkMag-std()  column index: 552"

## Activity Labels

* `WALKING` (value `1`)
* `WALKING_UPSTAIRS` (value `2`)
* `WALKING_DOWNSTAIRS` (value `3`)
* `SITTING` (value `4`)
* `STANDING` (value `5`)
* `LAYING` (value `6`)

## Extracted Features Vector (Names and Indices)
These have been extracted by using grepl function in R.
`feature_indices <- c(r[grepl("std", r$V2), c(1)], r[grepl("mean", r$V2), c(1)])`
  `a <- r[grepl("mean", r$V2),c(2)]`
  `b <- r[grepl("std", r$V2),c(2)]`
  `feature_names <- c(as.character(a),as.character(b))`


## Activities Vector

```R
c(1, 2, 3, 4, 5, 6)
```

## Activity Names Vector

```R
c("WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING")
```