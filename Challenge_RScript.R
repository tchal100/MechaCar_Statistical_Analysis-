### Del 1
library(tidyverse)

setwd("C:/Users/Timerson/OneDrive/Desktop/Vander Files/Class Modules/Week 15 R_Analysis/MechaCar_Statistical_Analysis-")

MechaCar_mpg <- read.csv('MechaCar_mpg.csv',check.names = F,stringsAsFactors = F) #import used car dataset

lm(formula = mpg ~ AWD, data = MechaCar_mpg) #create linear model

lm(formula =  mpg ~ AWD + ground_clearance + spoiler_angle + vehicle_weight + vehicle_length, data = MechaCar_mpg) #generate multiple linear regression model


###Del 2

Suspension_Coil <- read.csv('Suspension_Coil.csv',check.names = F,stringsAsFactors = F) #import used car dataset



Total_summary<-Suspension_Coil %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),sd=sd(PSI))


lot_summary<-Suspension_Coil %>% group_by(Manufacturing_Lot) %>% summarize(mean=mean(PSI),median=median(PSI),variance=var(PSI),sd=sd(PSI),.groups = 'keep')

### Del 3 


t.test(Suspension_Coil$PSI,mu=1500)


t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot1' )$PSI,mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot2' )$PSI,mu=1500)
t.test(subset(Suspension_Coil, Manufacturing_Lot == 'Lot3' )$PSI,mu=1500)
