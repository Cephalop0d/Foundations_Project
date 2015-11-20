rm(list=ls())
getwd()
data <- read.csv("data_clean.csv")

#test change

data.next <- data
data.next$hour.next <- data.next$Hour+1
hist(data.next$hour.next)
data.merge <- merge(data, data.next, by.x = c("Party","Hour"), by.y = c("Party","hour.next"), all.x=T)
