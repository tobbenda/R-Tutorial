cat("\014")

head(ds)
summary(ds)

#Barplot of home/away matches
homeOrNot <- table(ds$was_home)
barplot(homeOrNot)
plot(homeOrNot)



#Fixed error " Error in plot.new() : figure margins too large "
par("mar")
par(mar=c(1,1,1,1))


plot(my_data$total_points,
     xlim = c(0,300),
     ylim = c(0,300)
     )


library("dataset")

my_data <- read_excel("/Users/torbjorndahl/github/R_Tutorial/FPL/gw39_data_test2.xlsx")

mydata = read.csv("/Users/torbjorndahl/github/R_Tutorial/FPL/gw39_data_test3.csv")  # read csv file 
mydata 
head(mydata)

