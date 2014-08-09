source("load_data.R")

png("plot3.png", width=480, height=480)

plot(dat$Time,dat$Sub_metering_1, 
     type="l",
     main="",
     xlab="",
     ylab="Energy sub metering")
  lines(dat$Time,dat$Sub_metering_2,col="red")
  lines(dat$Time,dat$Sub_metering_3,col="blue")

legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=1)

dev.off()
