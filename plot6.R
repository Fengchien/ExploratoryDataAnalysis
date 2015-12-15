plot6 <- function() {
  
  SCC <- readRDS("Source_Classification_Code.rds")
  NEI <- readRDS("summarySCC_PM25.rds")
  
  png(filename = "plot6.png", width = 480, height = 480, units = "px");
  
  NEIBalLa <- subset(NEI, NEI$fips == "24510" | NEI$fips == "06037")
  NEIBalLa$fips <- as.factor(NEIBalLa$fips)
  levels(NEIBalLa$fips) <- c("Los Angeles County", "Baltimore City")
  NEIMotor <- subset(NEIBalLa, grepl("^22010.{5}$", NEIBalLa$SCC))
  emByYear = aggregate(NEIMotor$Emissions, list(year = NEIMotor$year, city = NEIMotor$fips), sum)
  library(ggplot2)
  qplot(year, x, data=emByYear, facets=.~city, geom="line")
  dev.off();
  
}