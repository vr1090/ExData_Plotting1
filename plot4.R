#loading rhe data
filename <- "dataClean.rdata"
load(filename)

png(filename="plot4.png")


par("mfrow"=c(2,2))

with(dataClean, plot(dateConvert,as.numeric( Global_active_power)/500, type="l", ylab="Global Active Power",xlab=""))
with(dataClean, plot(dateConvert,Voltage, type="l",xlab="datetime"))

#3rd plot..
with(dataClean, plot(dateConvert,Sub_metering_1, type="S", ylab="Energy sub metering",xlab=""))
with(dataClean, points(dateConvert,Sub_metering_2, col="red", type="S"))
with(dataClean, points(dateConvert,Sub_metering_3, col="blue", type="S"))
legend("topright",col=c("black","red","blue"),lty=1,lwd=3,legend=c("energy sub metering 1","energy sub metering 2","energy sub metering 3"))

#4th
with(dataClean, plot(dateConvert,as.numeric( Global_reactive_power)/500, type="s", ylab="Global Reactive Power",xlab="datetime"))

dev.off()