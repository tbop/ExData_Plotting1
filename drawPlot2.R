drawPlot2 <- function () {
    with(households, plot(Global_active_power ~ Date, xlab="", ylab="Global Active Power (kilowatts)", type="l"));
}