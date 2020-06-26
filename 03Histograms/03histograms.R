library(datasets)

#Plotting histograms for the iris dataset sepal and petal lenght and width´s.
hist(iris$Sepal.Length)
hist(iris$Sepal.Width)
hist(iris$Petal.Length)
hist(iris$Petal.Width)

#sets the plotting settings to 3 rows and 1 column.
#mfrow is for matrix fill by row -> the plots will be entered from left to right and them down.
#Possible to fill by column with mfcol
par(mfrow = c(3, 1)) 
hist(iris$Sepal.Length,
     col ="red",
     xlim = c(0,8)  #will limit the x-values to this interval
     )
hist(iris$Sepal.Width,
     col="purple",
     xlim=c(0,8)
     )

hist(iris$Petal.Length,
     col="blue",
     xlim=c(0,8)
     )

