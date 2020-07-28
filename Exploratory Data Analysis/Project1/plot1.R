my_data<-read.csv("household_power_consumption.txt",header=T,sep=';',na.strings = "?",quote='\"')
head(my_data)
maindate1<-"1/2/2007"
maindate2<-"2/2/2007"
x<-as.Date(maindate1)
y<-as.Date(maindate2)

my_data1<-subset(my_data, Date %in% c(maindate1,maindate2))
hist(as.numeric(my_data1$Global_active_power),ylab="Frequency",xlab="Global Active Power(kilowatts)",main="Global Active Power",col="Red")
png("plot1.png",width = 480,height = 480)
hist(as.numeric(my_data1$Global_active_power),ylab="Frequency",xlab="Global Active Power(kilowatts)",main="Global Active Power",col="Red")
dev.off()
