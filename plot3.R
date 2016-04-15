#loading rhe data
filename <- "dataClean.rdata"
load(filename)

png(filename="plot3.png")

with(dataClean, plot(dateConvert,Sub_metering_1, type="S", ylab="Energy sub metering",xlab=""))
with(dataClean, points(dateConvert,Sub_metering_2, col="red", type="S"))
with(dataClean, points(dateConvert,Sub_metering_3, col="blue", type="S"))
legend("topright",col=c("black","red","blue"),pch="----",legend=c("energy sub metering 1","energy sub metering 2","energy sub metering 3"))

dev.off()