library(datasets)

#install pacman if not installed:
if (!require("pacman")) install.packages("pacman")

#use pacman to load psych
pacman::p_load(pacman, psych) 

#show info about psych in R viewer
p_help(psych, web = F)  

#use describe, which is for quantitative variables only
describe(iris$Sepal.Length)
describe(iris)

#Cleanup
p_unload(all)  # Remove all add-ons
detach("package:datasets", unload = TRUE)
cat("\014") 
