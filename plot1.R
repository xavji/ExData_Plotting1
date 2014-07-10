source('readFile.R')

powerData = readFile('household_power_consumption.txt')

png('plot1.png')

hist(powerData$Global_active_power, xlab='Global Active Power (kilowatts)', col='red', main='Global Active Power')

dev.off()

