# MechaCar_Statistical_Analysis

## Overview of Project
  Using R and RStudio, implement data analysis on the produciton data of AutosRUs' newest prototype, the MechaCar, to identify the variable that could be causing its production trouble.
  
### Purpose:   
   The purpose of this analysis is to implement technical analysis on produciton data and propose for further statistical study to identify the cause of its newest prototype's production trouble. Thus, we implement following data analysis:
   - Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
  - Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
  - Run t-tests to determine if the manufacturing lots are statistically different from the mean population
  - Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you’ll write a summary interpretation of the findings.
   

### Reources
- S3 Amazon Data Sets Link list: _Amason Review datasets_: <https://s3.amazonaws.com/amazon-reviews-pds/tsv/index.txt>
- Used S3 link <https://s3.amazonaws.com/amazon-reviews-pds/tsv/amazon_reviews_us_Mobile_Apps_v1_00.tsv.gz>
- Used Software and Service: Amazon RDS, S3, PySpark, pgAdmin 4

## Analysis 
### Linear Regression to Predict MPG

  ![regression_summary]()
  - Based on the linear regression summary provided, we can confirm that 'vehicle_length,' 'ground_clearance,' and also the 'slope intercept' provided a non-random amount of variance the mpg values in the dataset as those variables have signifant codes of `***` and probability.
  - Also, the slope of the linear model is **NOT** zero, as its p-value is **5.35e^-11** and lower than the regular significance level of 0.05%.
  - Lastly, to evaluate if this linear model predict mpg of MechCar prototypes effectively, we can say that the model predicts correctly about 71% of the time as the model's R-squared value is 0.7149. Since we see that the model's slope intercept is significant in predicting mpg, we can assess that there are other factors not included in this model that affect the mpg variability of the MechaCar prototypes.

### Summary Statistics on Suspension Coils

  ![total_summary]()
  
  ![lot_summary]()
  
  Given the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch, we can evaluate if the three Lots in the dataset do meet with the criteria. Based on the output from `lot_summary` dataframe, the variance of Lot 1 and Lot 2 are smaller than 100, but the Lot 3 exceeds it. Thus Lot 3 does not meet with the design spcification for manufacturing lots and need to be reviewed.
  
### T-Tests on Suspension Coils

  ![t_test_all]()
  
  ![t_test_eachlot]()
  
  Reviewing the p-values of each Lot and the entire population mean, we can see that Lot 3's p-value is 0.042 and shows that there is significant evidence that suspension coild is different from the population mean.
  
### Study Design: MechaCar vs Competition

