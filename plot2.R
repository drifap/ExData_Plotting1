## plot 2

source(file="load_data.R")

plot2 <- function(){
        #plot2
        png("plot2.png")
        plot(sub$new_Date,sub$Global_active_power,type="l",ylab="Global Active Power (kilowatts)",xlab="")
        dev.off()
}

plot2()
