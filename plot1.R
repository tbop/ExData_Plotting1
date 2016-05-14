plot1 <- function () {
    source("importHouseholdPowerConsumptionData.R");
    source("drawPlot1.R");
    
    importHouseholdPowerConsumptionData();
    
    par(mfrow=c(1,1));
    
    drawPlot1();
    
    dev.copy(png, file = "plot1.png", width=480, height=480)
    dev.off();
}