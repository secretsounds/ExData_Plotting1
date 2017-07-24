#Exploratory Data Analysis - Project 1

#setwd("R:/Renne/Coursera/Data_Science/Exploratory Data Analysis/Project1/ExData_Plotting1")

library(ggplot2)
library(dplyr)
library(lubridate)

# Download and unzip data file

zip_file_name <- "power.zip"

if(!file.exists(zip_file_name)){
  print("Downloading Zip Data...")
  download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = zip_file_name)
  
  print("Unpacking Zip Data...")
  unzip(zipfile = zip_file_name)
} else {
  print("Data file already on disk, proceding...")
}

txt_file_name <- "household_power_consumption.txt"

# Check if data file exists
if(file.exists(txt_file_name)){
  # Read data file
  file <- read.csv(txt_file_name, sep = ";",header = TRUE, stringsAsFactors = FALSE, na.strings = c("?"))
  
  power_data <- tbl_df(file)
  
  power_data$Date_type <- as.Date(power_data$Date, format="%d/%m/%Y") 
  
  # Select only data between given dates
  power_data <- filter(power_data, Date_type >= as.Date("2007-02-01") & Date_type <= as.Date("2007-02-02"))
  
  dateTime <- paste(power_data$Date, power_data$Time, sep=' ')
  
  power_data$Date_dateTime <- strptime(dateTime, format="%d/%m/%Y %H:%M:%S")
  
  # Run all plots
  source('plot1.R')
  source('plot2.R')
  source('plot3.R')
  source('plot4.R')
  
} else {
  printf("Text data file doesn't exists!")
}