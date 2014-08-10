#####Plot2.R
power <- read.csv("C:/Users/mani/Desktop/power.txt",header=TRUE, sep=";")
colnames(power)
newpower<-power[which(power$Date1=="1/2/2007" & power$Date1=="2/2/2007"),]
newdata <- na.omit(newpower)
newdata
# Start PNG device driver to save output to figure.png
png(filename="C:/Users/mani/Documents/figure.png", height=480, width=480, 
 bg="white")
Date1<-as.Date(newdata$Date)
# get the range for the x and y axis 
xrange <- range(newdata$Date1) 
yrange <- range(newdata$Global_active_power2) 

# set up the plot 
plot(xrange, yrange, type="n", xlab="Date1 (days)",
  	ylab="Global_active_power2 (kilowat)" ) 
