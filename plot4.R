source(file="loadData.R")

par(mfrow=c(2,2))

with(dataToUse, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power", xlab="")
  plot(Voltage~Datetime, type="l",
       ylab="Voltage", xlab="datetime")
  plot(Sub_metering_1~Datetime, type="l",
       ylab="Energy sub metering", xlab="datetime")
  lines(Sub_metering_2~Datetime,col="red")
  lines(Sub_metering_3~Datetime,col="blue")
  legend("topright", col=c("black","red","blue"), c("Sub_metering_1  ","Sub_metering_2  ", "Sub_metering_3  "),lty=c(1,1), bty="n", cex=.5)
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power", xlab="datetime")
})

dev.copy(png, file="plot4.png", width=480, height=480)
dev.off()
