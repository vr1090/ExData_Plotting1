#loading rhe data
filename <- "dataClean.rdata"
load(filename)

#start creating plot..
dataGlobalActive <- as.numeric( dataClean$Global_active_power)
data_global_kw <- dataGlobalActive/1000
png(filename ="plot1.png" )
hist(data_global_kw,main = "Global Active Power",col=c("red"),xlab = "Global Active Power (kilowatts)")
dev.off()
#end of historgram code
#add on something else