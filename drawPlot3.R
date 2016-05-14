drawPlot3 <- function () {
    with(households, plot(Sub_metering_1 ~ Date, xlab="", ylab="Energy sub metering", type="l"));
    with(households, lines(Sub_metering_2 ~ Date, col="red"));
    with(households, lines(Sub_metering_3 ~ Date, col="blue"));
    legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, col=c("black", "red", "blue"));
}