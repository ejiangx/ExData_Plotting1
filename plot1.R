## Plot 1: Global Active Power
#  Read data
source("dataread.R")
DF <- dataread()

#  Plot Global Active Power
png("plot1.png", width = 480, height = 480)
hist(DF$Global_active_power, 
     main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts",
     col = "red")

dev.off()