## plot4

source(file="load_data.R")

# create function for plot4 
plot4 <- function(){
        png("plot4.png")                                     # open grapichs device
        par(mfrow=c(2,2))                                    # set display to 2x2 
        with(sub,{
                plot(new_Date,Global_active_power,                 # set plot 1
                     type="l",                                     # set type - lines = l 
                     ylab="Global Active Power (kilowatts)",       # set Y label
                     xlab="")                                      # remove label from X
                
                plot(new_Date,Voltage,                             # set initial plot 2
                     type="l",                                     # set type - lines = l 
                     xlab="datetime")
                
                plot(new_Date,Sub_metering_1,                      # set initial plot 3
                     type="l",                                     # line type
                     ylab="Energy sub metering",                   # label Y
                     xlab="");                                     # remove label X
                lines(new_Date,Sub_metering_2,                     # add lines to plot
                      col="red",                                   # colour for line 2
                      lwd=2);                                      # determine width of line
                lines(new_Date,Sub_metering_3,                     # add lines to plot 
                      col="blue",                                  # colour for line 2
                      lwd=2);                                      # determine width of line
                legend("topright",                                 # add legend to plot
                       lty=1,                                      # linetype for legend
                       col=c("black","red","blue"),                # colour in legend
                       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
                
                plot(new_Date,Global_reactive_power,               # set initial plot 4
                     type="l",                                     # line type = l 
                     xlab="datetime")                              # label X
                
        })
        dev.off()                                                  # graphics off
        
        par(mfrow=c(1,1))                                          # reset display to 1x1
}

plot4()
