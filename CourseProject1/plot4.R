if(!exists('subHpc')) {
	source('load_data.R')
}
png('plot4.png')
par(mfrow = c(2, 2))
attach(subHpc)

time <- strptime(paste(Date, Time), "%d/%m/%Y %H:%M:%S")
dates <- as.POSIXct(round(range(time), "days"))

plot(time, Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xaxt = "n", xlab = "")
axis.POSIXct(1, at = seq(dates[1], dates[2], by = "days"))

plot(time, Voltage, type = "l", ylab = "Voltage", xaxt = "n", xlab = "datetime")
axis.POSIXct(1, at = seq(dates[1], dates[2], by = "days"))

plot(time, Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = "n")
axis.POSIXct(1, at = seq(dates[1], dates[2], by = "days"))
lines(Sub_metering_2, col = "red")
lines(Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.col = NA, inset = .02)

plot(time, Global_reactive_power, type = "l", xaxt = "n", xlab = "datetime")
axis.POSIXct(1, at = seq(dates[1], dates[2], by = "days"))

detach(subHpc)
dev.off()

