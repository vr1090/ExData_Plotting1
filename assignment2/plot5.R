summarySCC <- readRDS("summarySCC_PM25.rds")
clasification <- readRDS("Source_Classification_Code.rds")

#load the library
library(ggplot2)

baltimore_on_road <- subset(summarySCC,  fips == "24510" & type=="ON-ROAD")

summaryBaltimore <- aggregate(baltimore_on_road$Emissions,by=list(baltimore_on_road$year), FUN=sum )

#prepare naming first..
names(summaryBaltimore) <- c("year","emission")


#start to create the graph..
png("plot5.png")
g <- ggplot(summaryBaltimore,aes(x=factor(year),y=emission))
g + geom_line() + geom_bar(stat="identity") + xlab("year")
dev.off()