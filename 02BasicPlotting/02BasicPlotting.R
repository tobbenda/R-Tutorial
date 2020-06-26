
#Load the datasets:
library(datasets)

#Plot the variable Species in the Iris datasets.
#R recognizes this as a cathegorical variable and makes a bar chart.
plot(iris$Species)

#Petal Length in iris is recognized as a quantitative variable and 
#is plotted as a scatter plot. 
plot(iris$Petal.Length)

#R recognizes one cathegorical and one quantitative variable and 
#produces a box plot.
plot(iris$Species, iris$Petal.Width)

# 2 quantitative variables results in a plot with one variable along each
# axis. 
plot(iris$Petal.Length, iris$Petal.Width)

#plotting the entire dataframe results in a 5by5 matrix of scatter plots.
plot(iris)


# Plotting with options. Options are taken after comma
plot(iris$Petal.Length, iris$Petal.Width,
     col = "#cc0000",  # Hex code for datalab.cc red
     pch = 19,         # Different numbers produce different symbols
     main = "Iris: Petal Length vs. Petal Width", #Header on plot
     xlab = "Petal Length", #x-axis label
     ylab = "Petal Width") #y-axis label

#Plotting functions:
#Cosine from 0 to 4pi:
plot(cos, 0, 4*pi)
#exponentioal from 0 to 10:
plot(exp, 0, 10)
#normal distribution from -3 to 3
plot(dnorm, -3, 3)

# Formula plots with options
plot(dnorm, -3, +3,
     col = "#cc0000", #red
     lwd = 5, #Width of curve
     main = "Standard Normal Distribution", #Title
     xlab = "z-scores", #x-axis label
     ylab = "Density") #y-axis label

detach("package:datasets", unload = TRUE)
dev.off()

#clear console:
cat("\014")
