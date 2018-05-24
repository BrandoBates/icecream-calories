IceCream<-read.csv("C:/Users/Brandon/Desktop/Statistics/Data/IceCream.csv")
Vanilla<-IceCream$VanillaCalories
Chocolate<-IceCream$ChocolateCalories

means<-c()
for(i in 1:10000){
  c<-sample(Chocolate, 39, replace=TRUE)
  v<-sample(Vanilla, 39, replace=TRUE)
  x<-mean(c)-mean(v)
  means[i]<-x
}

hist(means)
