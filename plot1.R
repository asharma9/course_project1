#####Plot1.R
power <- read.csv("C:/Users/mani/Desktop/power.txt",header=TRUE, sep=";")
colnames(power)
newdata <- na.omit(power)
newdata
# Start PNG device driver to save output to figure.png
png(filename="C:/Users/mani/Documents/figure.png", height=480, width=480, 
 bg="white")

Global_active_power1=newdata$Global_active_power
Global_active_power2<-as.numeric(Global_active_power1)
Global_active_power2
hist(Global_active_power2,plot=TRUE)
