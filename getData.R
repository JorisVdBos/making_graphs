library(lubridate)

# This file downloads the data if the data is not present, and constructs a 
# householdPowerConsumption data frame if not present in the environment.
# A filter is applied to filter the data to dates 01 and 02 of february 2007

# Downloading the Data
if(!file.exists("household_power_consumption.txt")){
        print("Donwloading data...")
        
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", "data.zip")
        unzip("data.zip")
        file.remove("data.zip")
        
        print("Download complete!")
}

# Reading the file
if(!exists("householdPowerConsumption")){
        print("Reading data...")
        
        householdPowerConsumption <- read.csv("household_power_consumption.txt", sep=";",  na.strings = "?")
        
        # Conversions
        householdPowerConsumption$Date <- dmy(householdPowerConsumption$Date)
        householdPowerConsumption$Time <- hms(householdPowerConsumption$Time)
        
        # Filters
        filter <- ymd("2007-02-01") == householdPowerConsumption$Date[] | 
                ymd("2007-02-02") == householdPowerConsumption$Date[]
        
        householdPowerConsumption <- householdPowerConsumption[filter,]
        
        print("Reading complete!")
}