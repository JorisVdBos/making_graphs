# This file checks if the data is present, then proceeds to making the four plots

# Check if the data table "householdPowerConsumption" is in the environment
source("getData.R")

# Making the plots
source("plot1.R")
createPlot1()

source("plot2.R")
createPlot2()

source("plot3.R")
createPlot3()

source("plot4.R")
createPlot4()