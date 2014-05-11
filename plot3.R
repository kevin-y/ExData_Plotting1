if(!exists('subHpc')) {
	source('load_data.R')
}
png('plot3.png')
attach(subHpc)
time <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
plot(time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xaxt = "n", xlab = "")
dates <- as.POSIXct(round(range(time), "days"))
axis.POSIXct(1, at = seq(dates[1], dates[2], by = "days"))
lines(time, Sub_metering_2, col = "red")
lines(time, Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
detach(subHpc)
dev.off()