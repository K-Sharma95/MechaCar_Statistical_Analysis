
# Load in Dependencies
library(jsonlite)
library(tidyverse)
library(dplyr)

# Read in both csv files
mecha_car_table <- read.csv('MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)
suspension_table <- read.csv('Suspension_Coil.csv', check.names=F,stringsAsFactors = F)

# Perform Linear Regression using multiple variables, and store in analysis 1
analysis_1 = lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mecha_car_table)

#Summarize linear regression analysis 1
summary(analysis_1)

# Create a dataframe thjt has the mean, median, variance, and standard deviated of the PSI for all lots
total_summary <- suspension_table %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Create dataframe with multiple columns grouped by manufacturing lot with the same columns as above dataframe
lot_summary <- suspension_table %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI), .groups = 'keep')

# Create a t-test function to determine if the PSI across all lots is statistically different from the population mean (of 1,500 pounds per square inch)
t.test(suspension_table$PSI, mu= 1500)

# Create three more tables, each containing the data for only one of three lots because you are unable to refactor this
Lot_1 = subset(suspension_table, Manufacturing_Lot == "Lot1")
Lot_2 = subset(suspension_table, Manufacturing_Lot == "Lot2")
Lot_3 = subset(suspension_table, Manufacturing_Lot == "Lot3")

# Perform t-tests for each lot and store results in screenshots 
t.test(Lot_1$PSI, mu= 1500)
t.test(Lot_2$PSI, mu= 1500)
t.test(Lot_3$PSI, mu= 1500)
