## Plot No. 2 code
## read in data only from Feb. 1, 2007 to Feb. 2, 2007
##load dqldf library
library(sqldf)
power_consumption_data <- read.csv.sql("data/household_power_consumption.txt", sql = "select * from file where Date in ('1/2/2007','2/2/2007')", sep = ";", header=TRUE)
png(filename = "plot2.png", width = 480, height = 480)
## plot Global_active_power as a function of time on Feb. 1, 2007 and Feb. 2, 2007
plot( strptime(paste(power_consumption_data[,1], power_consumption_data[,2], sep = " "),  format = "%d/%m/%Y %H:%M:%S"), power_consumption_data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()