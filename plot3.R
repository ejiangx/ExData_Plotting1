## Plot 3: Energy Sub Metering
#  Read data
source("dataread.R")
DF <- dataread()

#  Plot Sub Metering 1-3
png("plot3.png", width = 480, height = 480)
plot(DF$Time, DF$Sub_metering_1,
     type = "l",
     col = "black",
     xlab = "",
     ylab = "Energy sub metering")
lines(DF$Time, DF$Sub_metering_2, col = "red")
lines(DF$Time, DF$Sub_metering_3, col = "blue")
legend(legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col = c("black", "red", "blue"),
       lty = 1,
       lwd = 2,
       x = "topright")

dev.off()