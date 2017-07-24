print("Generating plot3.png ...")
png('plot3.png', width = 480, height = 480)

with(power_data, plot(Date_dateTime, Global_active_power, type='l', xlab='', ylab="Global Active Power (kilowatts)"))

with(power_data, {
              plot(Date_dateTime, Sub_metering_1, type='l', xlab='', ylab="Energy sub metering")
              lines(Date_dateTime, Sub_metering_2, type='l', col='red')
              lines(Date_dateTime, Sub_metering_3, type='l', col='blue')
            })

legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd='1', col=c('black', 'red', 'blue'))

dev.off()