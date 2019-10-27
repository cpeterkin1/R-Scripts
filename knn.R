#imports
library(class)
library(datasets)
#create training set
set.seed(12345)
allrows<-1:nrow(iris)
trainrows<- sample(allrows, replace=F,size=0.6*length(allrows))
train_iris<-iris[trainrows, 1:4]
train_label<-iris[trainrows, 5]
table(train_label)
test_iris<-iris[-trainrows, 1:4]
test_label<-iris[-trainrows,5]
table(test_label)
#knn
pred_iris<-knn(train=train_iris,test=test_iris,cl=train_label,1)
result_1<-cbind(test_iris, pred_iris)
pred_iris<-knn(train=train_iris,test=test_iris,cl=train_label,6)
result_2<-cbind(test_iris, pred_iris)
pred_iris<-knn(train=train_iris,test=test_iris,cl=train_label,13)
result_3<-cbind(test_iris, pred_iris)
combinetest<-cbind(test_iris, test_label)
#mean
mean(result_1 == test_iris)
mean(result_2 == test_iris)
mean(result_3 == test_iris)
#plot
plot(result_1)
plot(result_2)
plot(result_3)
plot(combinetest)

#mine
species<-iris$Species
