# This code is used in the dataExploration.R code

createPlot4 <- function(){
        source("plot2.R")
        source("plot3.R")
        
        png(paste0("plot4.png"), width = 480, height = 480)
        par(mfrow = c(2,2))
        
        constructPlot2()
        constructPlot4()
        constructPlot3()
        constructPlot5()
        
        
        dev.off()
}

constructPlot4 <- function(){
        with(householdPowerConsumption, plot(Date + Time, Voltage,
                                             xlab = "datetime",
                                             ylab = "Voltage", 
                                             type = "n"))
        with(householdPowerConsumption, lines(DateTime, Voltage))
}

constructPlot5 <- function(){
        with(householdPowerConsumption, plot(Date + Time, Global_reactive_power,
                                             xlab = "datetime",
                                             type = "n"))
        with(householdPowerConsumption, lines(DateTime, Global_reactive_power))
}