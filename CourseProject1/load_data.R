# This file attempts to load data from txt
classes <- c("character", "character", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric", "numeric")
hpc <- read.table("household_power_consumption.txt", head = T, sep = ";", colClasses = classes, na.strings = "?")
#subset data, only cares about data on 2007-2-1 and 2007-2-2
subHpc <- subset(hpc, Date == "1/2/2007" | Date == "2/2/2007")
rm('hpc')
rm('classes')
