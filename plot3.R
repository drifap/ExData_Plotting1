## plot 3

source(file="load_data.R")

plot3 <- function(){
        #plot3
        png("plot3.png")
        plot(sub$new_Date,sub$Sub_metering_1,type="l",ylab="Energy sub metering",xlab="");
        lines(sub$new_Date,sub$Sub_metering_2, col="red",lwd=2);
        lines(sub$new_Date,sub$Sub_metering_3, col="blue",lwd=2);
        legend("topright",pch=1,col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        dev.off()
}

plot3()
