library(jsonlite)
library(tidyverse)
library(dplyr)

### Deliverable 1: Linear Regression to Predict MPG ### 

# Import and read in the MechaCar_mpg.csv file as a dataframe
mpg_table <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F)
mpg_table

# Name each column as new variables
vl <- mpg_table$vehicle_length
vw <- mpg_table$vehicle_weight
sa <- mpg_table$spoiler_angle
gc <- mpg_table$ground_clearance
awd <- mpg_table$AWD

# Perform linear regression, passing all six variables, and add the dataframe as the dataparameter
lm(mpg ~  vl + vw + sa + gc + awd,data=mpg_table)

# Determine the p-value and the r-squared value for the linear regression model
summary(lm(mpg ~  vl + vw + sa + gc + awd,data=mpg_table))

### Deliverable 2: Create Visualizations for the Trip Analysis ###

# Import the Suspension_Coil.csv to dataframe
suspension <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F)
suspension 

# Create a total_summary dataframe
total_summary <- suspension %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
total_summary 

# Create dataframe grouping the information by the lot number
lot_summary <- suspension %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))
lot_summary

### Deliverable 3: T-Tests on Suspension Coils ###

# use the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500
# Perform t-test across all lots
t.test(suspension$PSI,mu=1500)

# Peform t-test on Lot 1
t.test(subset(suspension,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
# Peform t-test on Lot 2
t.test(subset(suspension,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
# Peform t-test on Lot 3
t.test(subset(suspension,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)
