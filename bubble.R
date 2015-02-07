# Load the data
crime <- read.csv("http://datasets.flowingdata.com/crimeRatesByState2005.tsv", header=TRUE, sep="\t")

# Set bubble radius based on pop size
radius <- sqrt(crime$population / pi)

# Plot bubble chart
symbols(crime$murder, crime$burglary,
  circles=radius,
  inches=0.35,
  fg="white",
  bg="red",
  xlab="Murder Rate",
  ylab="Burglary Rate"
)

text(crime$murder, crime$burglary, crime$state, cex=0.5)
