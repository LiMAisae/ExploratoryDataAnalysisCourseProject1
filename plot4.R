power_consump0<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?",stringsAsFactors=FALSE)

# plot 4
library(lubridate)
power_consump<-subset(power_consump0, Date %in% c("1/2/2007","2/2/2007"))
power_consump$Time<-dmy_hms(paste(power_consump$Date,power_consump$Time))
png("plot4.png", height = 480, width = 480)
par(mfrow=c(2,2))

with(power_consump, plot(Time,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)") )
with(power_consump, plot(Time,Voltage,type="l",xlab="",ylab="Voltage") )
title(xlab = "datetime")

with(power_consump, plot(Time,Sub_metering_1,type="l",xlab="",ylab="Energy sub metering", col="black"))
with(power_consump, lines(Time,Sub_metering_2,type="l",xlab="",ylab="Energy sub metering", col="red"))
with(power_consump, lines(Time,Sub_metering_3,type="l",xlab="",ylab="Energy sub metering", col="blue"))
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=1, lwd=2.5, col=c("black", "red", "blue"))

with(power_consump, plot(Time,Global_reactive_power,type="l",xlab="",ylab="Global_reactive_power") )
title(xlab = "datetime")
dev.off()