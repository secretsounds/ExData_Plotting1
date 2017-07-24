print("Generating plot4.png ...")
png('plot4.png', width = 480, height = 480)

par(mfrow=c(2,2))

#Line 1 col 1
with(power_data, plot(Date_dateTime, Global_active_power, type='l', xlab='', ylab="Global Active Power"))

#Line 1 col 2
with(power_data, plot(Date_dateTime, Voltage, xlab='datetime', type='l'))

#Line 2 col 1
with(power_data, {
                  plot(Date_dateTime, Sub_metering_1, type='l', xlab='', ylab="Energy sub metering")
                  lines(Date_dateTime, Sub_metering_2, type='l', col='red')
                  lines(Date_dateTime, Sub_metering_3, type='l', col='blue')
                })

legend('topright', legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd='1', col=c('black', 'red', 'blue'))

#Line 2 col 2
with(power_data, plot(Date_dateTime, Global_reactive_power, xlab='datetime', type='l'))

dev.off()