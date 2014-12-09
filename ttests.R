data <- read.table("ManualAppData.csv", header=TRUE, sep = ",")
# MobileOK tests for significance
t.test(data[4],data[12])
# PageSpeed Insights test for significance
t.test(data[5],data[13])
# Web loading speed test for significance
t.test(data[10],data[18])