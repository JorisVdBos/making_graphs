# This code is used in the dataExploration.R code

createPlot4 <- function(){
        png(paste0("plot4.png"), width = 480, height = 480)
        par(mfrow = c(2,2))
        
        constructPlot1()
        
        dev.off()
}

constructPlot1 <- function(){
        
}