# This code is used in the dataExploration.R code

createPlot2 <- function(n){
        png(paste0("plot2.png"), width = 480, height = 480)
        par(mfrow = c(1,1))
        
        constructPlot2()
        
        dev.off()
}

constructPlot2 <- function(){
        with(householdPowerConsumption, plot(Date + Time, Global_active_power,
                                             xlab = "",
                                             ylab = "Global Active Power (kilowatts)", 
                                             type = "n"))
        with(householdPowerConsumption, lines(Date + Time, Global_active_power))
}