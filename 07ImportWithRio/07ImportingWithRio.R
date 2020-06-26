library(datasets)

#install pacman if not installed:
if (!require("pacman")) install.packages("pacman")

#use pacman to load rio:
pacman::p_load(pacman, rio)

#importing csv with rio
rio_csv <- import("~/github/R_Tutorial/07ImportWithRio/R01_5_4_ImportingData_Datasets/mbb.csv")
head(rio_csv)
typeof(rio_csv)

#importing txt with rio
rio_txt <- import("~/github/R_Tutorial/07ImportWithRio/R01_5_4_ImportingData_Datasets/mbb.txt")
head(rio_txt)
typeof(rio_txt)

#importing excel (xlsx) file with rio:
rio_xlsx <- import("~/github/R_Tutorial/07ImportWithRio/R01_5_4_ImportingData_Datasets/mbb.xlsx")
head(rio_xlsx)
typeof(rio_xlsx)
summary(rio_xlsx)

#Open a data-viewer:
View(rio_txt)


#Without rio:

#Does not work, needs specified separator
r_txt1 <- read.table("~/github/R_Tutorial/07ImportWithRio/R01_5_4_ImportingData_Datasets/mbb.txt", header = TRUE)

# Specifying the separator: 
# \t is for tabs, sep = "," for commas. R converts missing
# to "NA"
r_txt2 <- read.table("~/github/R_Tutorial/07ImportWithRio/R01_5_4_ImportingData_Datasets/mbb.txt", 
                     header = TRUE, 
                     sep = "\t")

#reading csv with integrated methods
trend.csv <- read.csv("~/github/R_Tutorial/07ImportWithRio/R01_5_4_ImportingData_Datasets/mbb.csv", 
                      header = TRUE, )
head(trend.csv)

#CleanUp
# Clear environment
rm(list = ls()) 
# Clear packages
p_unload(all)  # Remove all add-ons
# Clear console
cat("\014")  # ctrl+L


