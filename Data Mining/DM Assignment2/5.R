setwd("D:\\Msit\\Data-Science\\Data Mining\\DM Assignment2")
data <- read.csv("twomillion.csv",header = FALSE)
samp <- sample(seq(1,length(data[,1])), 10000, replace=T)
#b
my_sample<-data[samp,1]
write.csv(my_sample, "my_sample.csv")
mean(my_sample)
max(my_sample)
var(my_sample)
quantile(my_sample, .25)
#c
mean(data[,1])
max(data[,1])
var(data[,1])
quantile((data[,1]), .25)
#how much would be the difference
abs(mean(my_sample)-mean(data[,1]))
abs(max(my_sample)-max(data[,1]))
abs(var(my_sample)-var(data[,1]))
abs(quantile(my_sample, .25)-quantile(data[,1], .25))
