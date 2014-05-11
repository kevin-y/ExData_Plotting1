#check if subHpc variable exists
#if not, try load_data.R
if(!exists('subHpc')) {
	source('load_data.R')
}
png("plot1.png")
hist(subHpc$Global_active_power, main = "Global Active Power", xlab = "Global Active Power(kilowatts)", col = "red")
dev.off()
