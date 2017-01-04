## Plot 2: Global Active Power by Day
#  Read data
source("dataread.R")
DF <- dataread()

#  Plot Global Active Power vs. Day
png("plot2.png", width = 480, height = 480)
plot(DF$Time, DF$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power (kilowatts)")

dev.off()