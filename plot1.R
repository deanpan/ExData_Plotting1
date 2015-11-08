## Plot No. 1 code
## read in data only from Feb. 1, 2007 to Feb. 2, 2007
##load dqldf library
library(sqldf)
power_consumption_data <- read.csv.sql("data/household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007','2/2/2007')", sep = ";", header=TRUE)
png(filename = "plot1.png", width = 480, height = 480)
## plot histgram of Global_active_power
hist(power_consumption_data$Global_active_power, main = paste("", "Global Active Power"), xlab = "Global Active Power (kilowatts)", ylab = "Frequency", col = "red")
dev.off()