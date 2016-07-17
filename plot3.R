# This code is used in the dataExploration.R code

createPlot3 <- function(){
        png(paste0("plot3.png"), width = 480, height = 480)
        par(mfrow = c(1,1))
        
        constructPlot3()
        
        dev.off()
}

constructPlot3 <- function(){
with(householdPowerConsumption, plot(Date + Time, Sub_metering_1,
                                             xlab = "",
                                             ylab = "Energy sub metering", 
                                             type = "n"))
        with(householdPowerConsumption, lines(Date + Time, Sub_metering_1))
        with(householdPowerConsumption, lines(Date + Time, Sub_metering_2, col = "red"))
        with(householdPowerConsumption, lines(Date + Time, Sub_metering_3, col = "blue"))
        
        legend("topright", lty=c(1,1,1), col= c("black", "blue", "red"),
               legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
}