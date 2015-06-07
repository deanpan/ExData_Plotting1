power_consumption_data <- read.csv.sql("data/household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007','2/2/2007')", sep = ";", header=TRUE)
png(filename = "plot1.png", width = 480, height = 480)
hist(power_consumption_data$Global_active_power, main = paste("", "Global Active Power"), xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()