

sub_meter1 <- as.numeric(subset$Sub_metering_1)
sub_meter2 <- as.numeric(subset$Sub_metering_2)
sub_meter3 <- as.numeric(subset$Sub_metering_3)

png("plot3.png", width=480, height=480)
plot(date_time, sub_meter1, type="l", ylab="Energy sub metering", xlab="")
lines(date_time, sub_meter2, type="l", col="red")
lines(date_time, sub_meter3, type="l", col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))
dev.off()