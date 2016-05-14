plot4 <- function () {
    source("importHouseholdPowerConsumptionData.R");
    source("drawPlot1.R");
    source("drawPlot2.R");
    source("drawPlot3.R");
    
    importHouseholdPowerConsumptionData();
    
    par(mfrow=c(2,2));
    
    drawPlot2();
    
    with(households, plot(Voltage ~ Date, xlab="datetime", ylab="Voltage", type="l"));
    
    drawPlot3();
    
    with(households, plot(Global_reactive_power ~ Date, xlab="datetime", type="l"));
    
    dev.copy(png, file = "plot4.png", width=480, height=480)
    dev.off();
}