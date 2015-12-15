plot4 <- function() {
  
  SCC <- readRDS("Source_Classification_Code.rds")
  NEI <- readRDS("summarySCC_PM25.rds")
  
  png(filename = "plot4.png", width = 480, height = 480, units = "px");
  
  NEICoal <- subset(NEI, grepl("^10[1-3]00[1-3]\\d{2}$", NEI$SCC))
  emByYear = aggregate(NEICoal$Emissions, list(year = NEICoal$year), sum)
  library(ggplot2)
  qplot(year, x, data=emByYear, type="l", geom="line")
  
  dev.off();
  
}