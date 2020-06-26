# Loading Data:
library(datasets)

#Show 6 first values in dataset iris:
head(iris)

#Summary statistics for dataset iris:
summary(iris)

#Scatterplot matrix for dataset iris:
plot(iris)


#Cleanup:
#Clear packages:
detach("package:datasets", unload = TRUE)

#Clear plot:
dev.off()
