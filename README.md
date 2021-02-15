# Mecha-Car Statistical Analysis





## Linear Regression to Predict MPG

- Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?
The variables that produced a non-random amount of variance are indicated by asteriks in this [regression analysis](regression_summary.png). These variables of interest are
vehicle_length and ground_clearance.

- Is the slope of the linear model considered to be zero? Why or why not?
The slope of this linear model can be determined from the following outputs.

- Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?
My r value is 0.6825 and my p value is 5.35e-11 from this linear regression analysis.This R value is high (above 0.5 or 50%) meaning that roughly 70% mpg predictions 
will be correct. I consider this an effecive prediction. 


## Summary Statistics on Suspension Coils


The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?



## T-Tests on Suspension Coils

The p  value of the t-test I conducted is 0.06 and is therefore greater than 0.05. Resultingly the values of the the PSI columns are not significantly different from 1500. In other words there is no significant difference. 




## Study Design: MechaCar vs Competition
