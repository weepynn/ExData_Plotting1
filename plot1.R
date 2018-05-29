setwd("../Desktop/CSC Coursera/Intermediate Data Science with R/Exploratory Data Analysis/Assignment/exdata_2Fdata%2Fhousehold_power_consumption")

data1 <- read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subset <- data1[data1$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subset$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()