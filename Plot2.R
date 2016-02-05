x<-read.csv("C:/Users/Cheng/Documents/Coursera/household_power_consumption.txt",na.strings = "?",colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"),sep=";")
x$Date<-as.Date(x$Date,"%d/%m/%Y")
y<-x[x$Date %in% as.Date(c("2007-02-01","2007-02-02"),"%Y-%m-%d"),]
y$Time<-strptime(paste(y$Date,y$Time),"%Y-%m-%d %H:%M:%S")
png(filename= "Plot2.png", width = 480, height = 480)
plot(y$Time,y$Global_active_power,type="l",xlab = "", ylab="Global Active Power (kilowatts)")
dev.off()