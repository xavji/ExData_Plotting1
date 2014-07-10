readFile <- function(fileName) {
  sample = read.table(fileName, header=TRUE, sep=";", na.strings=c("?"))
  sample$DateTime = paste(sample$Date, sample$Time)
  sample$DateTime = parseDate(sample$DateTime)
  subset(sample, DateTime >= parseDate('01/02/2007 00:00:00') & DateTime < parseDate('03/02/2007 00:00:00'))
}

parseDate <- function(x) strptime(x, "%d/%m/%Y %H:%M:%S")
