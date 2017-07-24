print("Generating plot2.png ...")
png('plot2.png', width = 480, height = 480)

with(power_data, plot(Date_dateTime, Global_active_power, type='l', xlab='', ylab="Global Active Power (kilowatts)"))

dev.off()