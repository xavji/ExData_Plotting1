source('readFile.R')

powerData = readFile('household_power_consumption.txt')

png('plot4.png')

par(mfrow = c(2, 2))

with(powerData, {
  plot(DateTime, Global_active_power, type = 'l', ylab='Global Active Power', xlab='')
  plot(DateTime, Voltage, type = 'l', xlab='')
  {
    plot(DateTime, Sub_metering_1, type = "l", ylab='Energy submetering', xlab='')
    lines(DateTime, Sub_metering_2, col = "red")
    lines(DateTime, Sub_metering_3, col = "blue")
    legend("topright", lty = c(1,1,1), col = c("black", "red", "blue"), 
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), 
           bty = "n")
  }
  plot(DateTime, Global_reactive_power, type = 'l', xlab='')
})

dev.off()
