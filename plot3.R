if(!exists('subHpc')) {
	source('load_data.R')
}
png('plot3.png')
attach(subHpc)
plot(Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "", xaxt = "n")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
lines(Sub_metering_2, col = "red")
lines(Sub_metering_3, col = "blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
detach(subHpc)
dev.off()