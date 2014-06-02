## Assignment 1 - loading data


## get data
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), header=T, dec=".",sep=";",na.strings="?",stringsAsFactors=F)
unlink(temp)


data$Date <- as.Date(data$Date,format="%d/%m/%Y")                           # character into date 
sub <- subset(data, data$Date=="2007-02-01"|data$Date=="2007-02-02")        # subset

table(sub$Date)

rm(data)
