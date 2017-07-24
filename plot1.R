print("Generating plot1.png ...")
png('plot1.png', width = 480, height = 480)

hist(power_data$Global_active_power, main = "Global Active Power", xlab = "Global Active Power (kilowatts)", col = "red")

dev.off()