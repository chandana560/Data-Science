setwd("D:\\Msit\\Data-Science\\Data Mining\\DM Assignment2")
ca_data <-read.csv("CA_house_prices.csv",header=FALSE)
oh_data <-read.csv("OH_house_prices.csv",header=FALSE)
#a
boxplot(ca_data[,1],oh_data[,1],col="blue",main="Chandana Priya",names =c("ca houses", "Ohio houses"),ylab="Prices(in thousands)")
#b
hist(ca_data[,1]*1000,breaks=seq(0,3500000,by=500000),col="green",xlab="Prices",ylab="Frequency",main="Chandana Priya")
#c
plot(ecdf(ca_data[,1]),verticals = TRUE,do.p=FALSE,main ="Chandana Priya",xlab="Prices(in thousands)",ylabs="Frequency")
#
plot(ecdf(ca_data[,1]), verticals=TRUE,do.p = FALSE, main = "Chandana Priya",xlab="Prices(in thousands)",ylab="Frequency")
lines(ecdf(oh_data[,1]),verticals= TRUE,do.p = FALSE,col.h="red",col.v="green",lwd=4)
#
plot(ecdf(ca_data[,1]),verticals = TRUE,do.p=FALSE,main ="Chandana Priya",xlab="Prices(in thousands)",ylabs="Frequency")
lines(ecdf(oh_data[,1]),verticals = TRUE,do.p=FALSE,col.h="red",col.v="green",lwd=4)
legend(2100,.6,c("CA Houses","OH Houses"),col=c("black","green"),lwd=c(1,4))
