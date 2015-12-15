plot1 <- function() {

  SCC <- readRDS("Source_Classification_Code.rds")
  NEI <- readRDS("summarySCC_PM25.rds")

	png(filename = "plot1.png", width = 480, height = 480, units = "px");
  emByYear = aggregate(NEI$Emissions, list(year = NEI$year), sum)
  plot(emByYear$year, emByYear$x, type="l", xlab="Year", ylab="Emissions")
  dev.off();

}