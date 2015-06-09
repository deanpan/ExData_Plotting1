power_consumption_data <- read.csv.sql("data/household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007','2/2/2007')", sep = ";", header=TRUE)
png(filename = "plot3.png", width = 480, height = 480)

plot( strptime(paste(power_consumption_data[,1], power_consumption_data[,2], sep = " "),  format = "%d/%m/%Y %H:%M:%S"), power_consumption_data$Sub_metering_1,  type = "l", xlab = "", ylab = "Energy Sub metering", ylim=c(0.0,38.0), col = "black")
par(new=T)
plot( strptime(paste(power_consumption_data[,1], power_consumption_data[,2], sep = " "),  format = "%d/%m/%Y %H:%M:%S"), power_consumption_data$Sub_metering_2,  type = "l", xlab = "", ylab = "Energy Sub metering", ylim=c(0.0,38.0), col = "red")
par(new=T)
plot( strptime(paste(power_consumption_data[,1], power_consumption_data[,2], sep = " "),  format = "%d/%m/%Y %H:%M:%S"), power_consumption_data$Sub_metering_3,  type = "l", xlab = "", ylab = "Energy Sub metering", ylim=c(0.0,38.0), col = "blue")
par(new=F)
legend("topright",  lty=1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()