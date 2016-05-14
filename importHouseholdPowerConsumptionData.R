importHouseholdPowerConsumptionData <- function () {
    library(lubridate);
    library(data.table);
    library(dplyr);
    library(tidyr);
    
    if(exists("households") == FALSE) {
        download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip", mode = "wb");
        unzip("household_power_consumption.zip");
        
        householdRaw <- fread("household_power_consumption.txt", na.strings="?");
        householdRaw %>% unite(Date, Date, Time, sep=" ", remove = TRUE) %>% mutate(Date = dmy_hms(Date)) %>%
                filter(as.Date(Date) >= as.Date("2007-02-01"), as.Date(Date) <= as.Date("2007-02-02")) ->> households;
    }
}