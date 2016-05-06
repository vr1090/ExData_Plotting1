summarySCC <- readRDS("summarySCC_PM25.rds")
clasification <- readRDS("Source_Classification_Code.rds")

library(ggplot2)
summarySCC2 <- merge(summarySCC,clasification,by = "SCC")

coalData <- grep( "coal", summarySCC2$Short.Name,ignore.case = T)
summarySCC2 <- summarySCC2[coalData,]

dataTampil<-aggregate(summarySCC2$Emissions, by=list(summarySCC2$year),FUN=sum)

names(dataTampil) <- c("year","emission")

png("plot4.png")

g<- ggplot(dataTampil, aes(x=year,y=emission))
g+geom_line()+ geom_smooth()

dev.off()

