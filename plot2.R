#loading rhe data
filename <- "dataClean.rdata"
load(filename)
dataClean$dateStr <- paste(  dataClean$Date,dataClean$Time)
dataClean$dateConvert <- strptime( dataClean$dateStr,format="%d/%m/%Y %H:%M:%S")
dataClean$global_active_kw <- dataClean$Global_active_power/1000
png(filename="plot2.png")
with(dataClean,
    plot(dateConvert,as.numeric(Global_active_power)/500,type='l', ylab="Global Active Power (kilowatts)", xlab="")
)#end with
dev.off()