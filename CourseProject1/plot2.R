if(!exists('subHpc')) {
	source('load_data.R')
}
png("plot2.png")
time <- strptime(paste(subHpc$Date, subHpc$Time), "%d/%m/%Y %H:%M:%S")
plot(time, subHpc$Global_active_power, type = "l", ylab = "Global Active Power(kilowatts)", xaxt = "n", xlab = "")
dates <- as.POSIXct(round(range(time), "days"))
axis.POSIXct(1, at = seq(dates[1], dates[2], by = "days"))
dev.off()
