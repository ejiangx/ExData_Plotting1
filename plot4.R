## Plot 4: 2-by-2 plot
#  Read data
source("dataread.R")
DF <- dataread()

# Initialize Plot
png("plot4.png", width = 480, height = 480)
par(mfrow = c(2,2))

# [1,1]
plot(DF$Time, DF$Global_active_power,
     type = "l",
     xlab = "",
     ylab = "Global Active Power")

# [1,2]
plot(DF$Time, DF$Voltage,
     type = "l",
     xlab = "datetime",
     ylab = "Voltage")

# [2,1]
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
       lwd = 1,
       x = "topright",
       bty = "n")

# [2,2]
plot(DF$Time, DF$Global_reactive_power,
     type = "l",
     xlab = "datetime",
     ylab = "Global_reactive_power")

dev.off()