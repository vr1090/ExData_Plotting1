summarySCC <- readRDS("summarySCC_PM25.rds")
clasification <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
summarySCC2 <- subset(summarySCC,subset = summarySCC$fips=="24510")

dataTampil<-aggregate(summarySCC2$Emissions, by=list(summarySCC2$type,summarySCC2$year),FUN=sum)

names(dataTampil) <- c("type","year","emission")

png("plot3.png")

qplot(year,emission,data=dataTampil,facets = type~.,geom = c("line","smooth"))

dev.off()

