if(!exists('subHpc')) {
	source('load_data.R')
}
png("plot2.png")
plot(subHpc$Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xaxt = "n", xlab = "")
axis(1, at = c(0, 1500, 2880), labels = c("Thu", "Fri", "Sat"))
dev.off()
