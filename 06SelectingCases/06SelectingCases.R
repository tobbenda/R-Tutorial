library(datasets)

par(mfrow = c(2, 1)) 
#Histogram of the petal lengths in iris where the petal length is over 2.
hist(iris$Petal.Length[iris$Petal.Length>2],
     col = "blue")
#Summary of the petal lengths in iris where the petal length is over 2.
summary(iris$Petal.Length[iris$Petal.Length>2])

#Saving a subset of the dataset to a new dataset:
newSet <- iris[iris$Species == "setosa",]   #nothing behind the comma means all columns
#newSet should contain all the setosas of the original dataset.
head(newSet)
summary(newSet)
hist(newSet$Petal.Length,
     col="red")

#Clean:
rm(list = ls()) 
detach("package:datasets", unload = TRUE) 
dev.off() 
cat("\014")

