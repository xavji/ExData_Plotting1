source('readFile.R')

powerData = readFile('household_power_consumption.txt')

png('plot3.png')

plot(powerData$DateTime, powerData$Sub_metering_1, type = "l", ylab='Energy submetering', xlab='')
lines(powerData$DateTime, powerData$Sub_metering_2, col = "red")
lines(powerData$DateTime, powerData$Sub_metering_3, col = "blue")
legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()
