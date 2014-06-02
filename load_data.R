## Assignment 1 - loading data


## get data
temp <- tempfile()
download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",temp)
data <- read.table(unz(temp, "household_power_consumption.txt"), header=T, dec=".",sep=";",na.strings="?",stringsAsFactors=F)
unlink(temp)

data$new_Date <- strptime(paste(data$Date, data$Time),"%d/%m/%Y %H:%M:%S")  # character into date

sub <- subset(data, data$new_Date >= as.POSIXct("2007-02-01 00:00:00")& data$new_Date <=as.POSIXct("2007-02-02 23:59:59"))        # subset

rm(data)
