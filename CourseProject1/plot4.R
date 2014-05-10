if(!exists('subHpc')) {
	source('load_data.R')
}
png('plot4.png')
par(mfrow = c(2, 2))
attach(subHpc)

plot(Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xaxt = "n", xlab = "")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

plot(Voltage, type = "l", ylab = "Voltage", xaxt = "n", xlab = "datetime")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

plot(Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = "n")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
lines(Sub_metering_2, col = "red")
lines(Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), box.col = NA, inset = .02)

plot(Global_reactive_power, type = "l", xaxt = "n", xlab = "datetime")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))

detach(subHpc)
dev.off()

