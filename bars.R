# NEXIS Seminar R Example
#
# Bar Chart

# Create the data frame
cities <- c('Buffalo', 'Syrause', 'Binghamton', 'Rochester', 'Albany')
snow <- c(75.5, 60.1, 58.7, 54.2, 52.3)
snowLevels <- data.frame(cities, snow)

print(snowLevels)

# Render a barplot with the modified data
barplot(snowLevels$snow,
  names.arg=snowLevels$cities,
  col='#821122',
  space=0.3,
  border=NA,
  xlab="Cities",
  ylab="Snow Levels (Inches)",
  main="Upstate New York Snow Totals (2015), by City"
)
