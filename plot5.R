plot5 <- function() {
  
  SCC <- readRDS("Source_Classification_Code.rds")
  NEI <- readRDS("summarySCC_PM25.rds")
  
  png(filename = "plot5.png", width = 480, height = 480, units = "px");
  
  NEIBal <- subset(NEI, NEI$fips == "24510")
  NEIMotor <- subset(NEIBal, grepl("^22010.{5}$", NEIBal$SCC))
  emByYear = aggregate(NEIMotor$Emissions, list(year = NEIMotor$year), sum)
  library(ggplot2)
  qplot(year, x, data=emByYear, type="l", geom="line")
  
  dev.off();
  
}