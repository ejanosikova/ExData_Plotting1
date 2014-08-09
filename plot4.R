source("load_data.R")

png("plot4.png", width=480, height=480)

par(mfrow=c(2,2))

#plot1#

plot(dat$Time,dat$Global_active_power, 
     type="l",
     main="",
     xlab="",
     ylab="Global Active Power (kilowatts)")

#plot2#

plot(dat$Time,dat$Voltage,
     type="l",
     main="",
     xlab="datetime",
     ylab="Voltage")


#plot3#

plot(dat$Time,dat$Sub_metering_1, 
     type="l",
     main="",
     xlab="",
     ylab="Energy sub metering")
lines(dat$Time,dat$Sub_metering_2,col="red")
lines(dat$Time,dat$Sub_metering_3,col="blue")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

#plot4#

plot(dat$Time,dat$Global_reactive_power,
     type="l",
     main="",
     xlab="datetime",
     ylab="Global_reactive_power")

dev.off()
