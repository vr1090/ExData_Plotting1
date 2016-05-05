summarySCC <- readRDS("summarySCC_PM25.rds")
clasification <- readRDS("Source_Classification_Code.rds")

summarySCC2 <- subset(summarySCC,subset = summarySCC$fips=="24510")
summary <- aggregate(summarySCC2$Emissions, by=list(summarySCC2$year),FUN=sum)

names(summary)<- c("year","total")
png("plot2.png")

plot(summary$year, summary$total, type="l", xlab="year",ylab="total")

dev.off()

