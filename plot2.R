power_consump0<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?",stringsAsFactors=FALSE)

# plot 2
library(lubridate)
png("plot2.png", height = 480, width = 480)
power_consump<-subset(power_consump0, Date %in% c("1/2/2007","2/2/2007"))
power_consump$Time<-dmy_hms(paste(power_consump$Date,power_consump$Time))
with(power_consump, plot(Time,Global_active_power,type="l",xlab="",ylab="Global Active Power (kilowatts)") )
dev.off()