#loading rhe data
filename <- "dataClean.rdata"
load(filename)
png(filename="plot2.png")
with(dataClean,
    plot(dateConvert,as.numeric(Global_active_power)/500,type='l', ylab="Global Active Power (kilowatts)", xlab="")
)#end with
dev.off()