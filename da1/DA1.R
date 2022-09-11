#Daily Assignment 1 - Villas-Boas
#when you know a bit more in R, come back to this, maybe in week 3 of instruction

#-------------------------------------------
#install needed R packages
#you will learn this in Sections
#you only need to install them once then only call them using library()
#-------------------------------------------
#for reading excell data file install the package below
install.packages("readxl")
install.packages("ggplot2")
install.packages("psych")

#call them in

# Loading packages
library(readxl)
library(ggplot2)
library(psych) # For function "describe()" below, which gives summary stats.

#-------------------------------------------
#set your working directory
#-------------------------------------------
#setwd("/Users/sberto/Desktop/")
setwd("/Users/liucheryl/Desktop/eep_118/da1")

#-------------------------------------------
#1. Read in data and see the top rows to see column names etc
#-------------------------------------------
#read in DA1 data set
#read in an excell dataset
my_data <- read_excel("opec.xlsx")
head(my_data)

#-------------------------------------------
#summary stats of data
#-------------------------------------------
describe(my_data,skew=FALSE)

#scatter plot
scatter_data <- ggplot(data = my_data) + geom_point(aes(x=capacity, y=margCost, color = "Countries")) +
  xlab("Production Capacity  (thousand barrels/day)") + ylab("Marginal Costs ($)") +
  ggtitle("Countries Capacity and Marginal\n Cost of Extracting Oil")+theme(axis.text=element_text(size=8),
       axis.title=element_text(size=8))+ geom_text(aes(x=4400, y= 20, label = "Venezuela"), size = 2) + geom_text(aes(x=12000, y= 9, label = "Saudi\n Arabia"), size = 2)
  
scatter_data



