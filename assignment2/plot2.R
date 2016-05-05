summarySCC <- readRDS("summarySCC_PM25.rds")
clasification <- readRDS("Source_Classification_Code.rds")

summary <- aggregate(summarySCC$Emissions, by=list(summarySCC$year),FUN=sum)

names(summary)<- c("year","total")
png("plot1.png")

plot(summary$year, summary$total, type="l", xlab="year",ylab="total")

dev.off()

