power_consump0<-read.table("household_power_consumption.txt", header = TRUE, sep = ";", dec = ".", na.strings = "?",stringsAsFactors=FALSE)

#plot 1
png("plot1.png", height = 480, width = 480)
power_consump<-subset(power_consump0, Date %in% c("1/2/2007","2/2/2007"))
hist(power_consump$Global_active_power, xlim= c(0,6), col="red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")
dev.off()