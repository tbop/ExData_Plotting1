plot3 <- function () {
    source("importHouseholdPowerConsumptionData.R");
    source("drawPlot3.R");
    
    importHouseholdPowerConsumptionData();
    
    par(mfrow=c(1,1));
    
    drawPlot3();
    
    dev.copy(png, file = "plot3.png", width=480, height=480)
    dev.off();
}