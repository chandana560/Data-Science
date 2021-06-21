setwd("D:\\Msit\\Data-Science\\Data Mining\\Final exam")
liver = read.csv("Liver_data.csv", header = FALSE, col.names = c("mcv", "alkphos", "sgpt", "sgot", "gammagt", "drinks","selector"))
str(liver)
liver$selector <- as.factor(liver$selector)
liver$drinks <- cut(liver$drinks, breaks = c(0, 5,10,15,20), labels = c('C1', 'C2', "C3", 'C4'), right = FALSE)
liver <- na.omit(liver)
train = subset(liver, liver$selector == 1)
str(train)
test = subset(liver, liver$selector == 2)
str(test)
dim(train)
dim(test)
x_train <- subset(train, select = -c(selector, drinks))
x_test <- subset(train, select = -c(selector, drinks))
library(class)
y_train = train[,6, drop = TRUE]
y_test = train[,6, drop = TRUE]
length(train)
length(test)


#missclassification for train data
#k = 1
fit1 = knn(x_train,x_train,y_train,k=1)  
1-sum(y_train==fit1)/length(y_train)   
#0

#K = 2
fit2 = knn(x_train,x_train,y_train,k=2)
1-sum(y_train==fit2)/length(y_train)
#0.1258741

#K = 2
fit3 = knn(x_train,x_train,y_train,k=3)
1-sum(y_train==fit3)/length(y_train)
#0.1888112

#misclassification for test data
#k=1
fit1 = knn(x_test,x_test,y_test,k=1)
1-sum(y_test==fit1)/length(y_test) 
#0

#k=2
fit2 = knn(x_test,x_test,y_test,k=2)
1-sum(y_test==fit2)/length(y_test) 
#0.1468531

#k=3

fit3 = knn(x_test,x_test,y_test,k=3)
1-sum(y_test==fit3)/length(y_test) 
#0.1888112

