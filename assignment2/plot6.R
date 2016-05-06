summarySCC <- readRDS("summarySCC_PM25.rds")
clasification <- readRDS("Source_Classification_Code.rds")

#load the library
library(ggplot2)

comparatorData <- subset(summarySCC,  fips %in% c("24510","06037") & type=="ON-ROAD")

comparatorData <- aggregate(comparatorData$Emissions,by=list(comparatorData$year,
                                                             comparatorData$fips), FUN=mean )

#prepare naming first..
names(comparatorData) <- c("year","fips","emission")

comparatorData$city <- ifelse ( comparatorData$fips == "24510","Baltimore","Los Angles")
                        

#start to create the graph..
png("plot6.png")
g <- ggplot(comparatorData,aes(x=year,y=emission))
g + geom_line(aes(color=city) )
dev.off()