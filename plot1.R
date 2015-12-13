
powerconsumptionFile <- "./data/household_power_consumption.txt"
## read the file into a table
powerconsumptionTable <- read.table(powerconsumptionFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
## make subset only for the required data 
trimmedDataSet <- powerconsumptionTable[powerconsumptionTable$Date %in% c("1/2/2007","2/2/2007") ,]
## code for the png file with the required dimensions
png("plot1.png", width = 480, height = 480, units = "px", bg = "white")
par(mar= c(4, 4, 2, 1))

global_active_power <- as.numeric(trimmedDataSet$Global_active_power)
## create histogram
hist(global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()