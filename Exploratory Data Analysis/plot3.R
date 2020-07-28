my_data<-read.csv("household_power_consumption.txt",header=T,sep=';',na.strings = "?",quote='\"')
head(my_data)
maindate1<-"1/2/2007"
maindate2<-"2/2/2007"
x<-as.Date(maindate1)
y<-as.Date(maindate2)


my_data1<-subset(my_data, Date %in% c(maindate1,maindate2))
mydata1Date<-as.Date(my_data1$Date,format="%d/%m/%Y")
datetime<-paste(mydata1Date,my_data1$Time)
datetime
z<-as.POSIXct(datetime)
my_data1$DateTime<-z
my_data1$Sub_metering_1

with(my_data1,{plot(Sub_metering_1~DateTime,type="l",xlab="",ylab="Energy sub metering")
  lines(Sub_metering_2~DateTime,col="red")
  lines(Sub_metering_3~DateTime,col="blue")})
legend("topright",col=c("black","red","blue"),lty = 1,lwd=2,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

png("plot3.png",width = 480,height = 480)
with(my_data1,{plot(Sub_metering_1~DateTime,type="l",xlab="",ylab="Energy sub metering")
  lines(Sub_metering_2~DateTime,col="red")
  lines(Sub_metering_3~DateTime,col="blue")})
legend("topright",col=c("black","red","blue"),lty = 1,lwd=2,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
dev.off()
