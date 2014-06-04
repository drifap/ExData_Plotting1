## plot 3

source(file="load_data.R")

# create function for plot 3 with legend
plot3 <- function(){
        png("plot3.png")                                     # open grapichs device
        plot(sub$new_Date,sub$Sub_metering_1,                # set initial plot 
             type="l",                                       # line type
             ylab="Energy sub metering",                     # label Y
             xlab="");                                       # remove label X
        lines(sub$new_Date,sub$Sub_metering_2,               # add lines to plot
              col="red",                                     # colour for line 2
              lwd=2);                                        # determine width of line
        lines(sub$new_Date,sub$Sub_metering_3,               # add lines to plot 
              col="blue",                                    # colour for line 2
              lwd=2);                                        # determine width of line
        legend("topright",                                   # add legend to plot
               lty=1,                                        # linetype for legend
               col=c("black","red","blue"),                  # colour in legend
               legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
        dev.off()                                            # graphics off
}

plot3()
