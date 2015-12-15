plot3 <- function() {
  
  SCC <- readRDS("Source_Classification_Code.rds")
  NEI <- readRDS("summarySCC_PM25.rds")
  
  png(filename = "plot3.png", width = 480, height = 480, units = "px");
  
  NEIBal <- subset(NEI, NEI$fips == "24510")
  emByYear = aggregate(NEIBal$Emissions, list(year = NEIBal$year, type = NEIBal$type), sum)
  library(ggplot2)
  qplot(year, x, data=emByYear, facets=.~type, geom="line")
  dev.off();
  
}