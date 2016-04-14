data <- read.csv("household_power_consumption.txt",header = TRUE,sep=";")
data$dateStr <- strptime(data$Date,format = "%d/%m/%Y")
data$dateConvert <- as.Date(data$dateStr)
selector <- with(data, dateConvert >= '2007-02-01' & dateConvert <='2007-02-02')
dataClean <- data[selector,]
save(dataClean,file = "dataClean.rdata")
