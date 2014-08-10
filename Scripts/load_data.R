data<-read.table("household_power_consumption.txt",
                 header=TRUE,sep=";",
                 colClasses=c("character", "character", rep("numeric",7)),
                 na="?")

data$Time <- strptime(paste(data$Date, data$Time), "%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, "%d/%m/%Y")

cDate<-as.Date(c("2007-02-01", "2007-02-02"), "%Y-%m-%d")

dat <- subset(data, Date %in% cDate)
