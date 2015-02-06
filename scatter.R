# Create the data frame
cities <- c('Buffalo', 'Syrause', 'Binghamton', 'Rochester', 'Albany')
snow <- c(75.5, 60.1, 58.7, 54.2, 52.3)
snowLevels <- data.frame(cities, snow)

plot(snowLevels$snow,
  type="p",
  ylim=c(0, 80),
  xlab="Cities",
  ylab="Snow Levels (inches)",
  main="Upstate New York Snow Totals (2015), by City"
)
