## plot 1

source(file="load_data.R")

# create function for plot1 
plot1 <- function(){
        png("plot1.png")                                   # open grapichs device
        hist(sub$Global_active_power,col="red",            # create hist and set colour
             xlab="Global Active Power (kilowatts)",       # label X
             main="Global Active Power")                   # Annote histagram
        dev.off()                                          # close graphics device 
}

plot1()                                                    # use function to save graph to file
