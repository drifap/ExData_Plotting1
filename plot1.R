## plot 1

source(file="load_data.R")

plot1 <- function(){
        #plot1
        png("plot1.png")
        hist(sub$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",main="Global Active Power")
        dev.off()
}

plot1()
