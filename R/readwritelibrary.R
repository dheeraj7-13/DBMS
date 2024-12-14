install.packages("XLConnect")
library(XLConnect)
install.packages("readxl")
library(readxl)
install.packages("writexl")
library(writexl)

#Reading and Writing data fronm csv
dataT <- read.table("Data.csv", sep=",", header = T)

dataT

#dimension
dim(dataT)

#Load just few lines at the top or bottom
head(dataT, 2)
tail(dataT, 2)

#Following is called subsetting 
dataY <- dataX[1:2,]
dataY


z <- data.frame(a = 5, b = 10, c = pi)
write.csv(z,file="Data.csv")

