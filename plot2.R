plot2 <- function () {
    source("importHouseholdPowerConsumptionData.R");
    source("drawPlot2.R");
    
    importHouseholdPowerConsumptionData();
    
    par(mfrow=c(1,1));
    
    drawPlot2();
    
    dev.copy(png, file = "plot2.png", width=480, height=480)
    dev.off();
}