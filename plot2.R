source('readFile.R')

powerData = readFile('household_power_consumption.txt')

png('plot2.png')

with(powerData, plot(DateTime, Global_active_power, type = 'l', ylab='Global Active Power (kilowatts)', xlab=''))

dev.off()

