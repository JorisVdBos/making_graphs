# This code is used in the dataExploration.R code

createPlot1 <- function(){
        png(paste0("plot.png"), width = 480, height = 480)
        par(mfrow = c(1,1))
        
        constructPlot1()
        
        dev.off()
}

constructPlot1 <- function(){
        hist(householdPowerConsumption$Global_reactive_power,
             col = "red", 
             xlab = "Global Active Power (kilowatts)",
             ylab = "Frequency",
             main = "Global Active power")
}