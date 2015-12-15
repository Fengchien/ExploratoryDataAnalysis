plot2 <- function() {
  
  SCC <- readRDS("Source_Classification_Code.rds")
  NEI <- readRDS("summarySCC_PM25.rds")
  
  png(filename = "plot2.png", width = 480, height = 480, units = "px");
  
  NEIBal <- subset(NEI, NEI$fips == "24510")
  emByYear = aggregate(NEIBal$Emissions, list(year = NEIBal$year), sum)
  plot(emByYear$year, emByYear$x, type="l", xlab="Year", ylab="Emissions")
  dev.off();
  
}