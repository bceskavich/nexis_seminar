# NEXIS Seminar R Example
#
# Bar Chart

# Load the data
hotdogs <- read.csv("http://datasets.flowingdata.com/hot-dog-contest-winners.csv", sep=",", header=TRUE)

# Color the chart
fill_colors <- c()
# Loops through each record in the data frame
for (i in 1:length(hotdogs$New.record)){
  # If new record, color the bar red
  if (hotdogs$New.record[i] == 1){
    fill_colors <- c(fill_colors, "#821122")
  }
  # If not a new record, color the bar gray
  else {
    fill_colors <- c(fill_colors, "#cccccc")
  }
}

print(hotdogs)

# Render a barplot with the modified data
barplot(hotdogs$Dogs.eaten,
  names.arg=hotdogs$Year,
  col=fill_colors,
  space=0.3,
  border=NA,
  xlab="Year",
  ylab="Hot Dogs & Buns (HDBs) Eaten",
  main="Nathan's Hot Dog Eating Contest Results, 1980-2010")
