source(file="loadData.R")

with(dataToUse, {
  plot(Global_active_power~Datetime, type="l",
       ylab="Global Active Power (kilowatts)", xlab="")
})

dev.copy(png, file="plot2.png", width=480, height=480)
dev.off()

