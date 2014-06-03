## plot 2

source(file="load_data.R")

# create function for plot 2
plot2 <- function(){
        png("plot2.png")                                   # open grapichs device
        plot(sub$new_Date,sub$Global_active_power,         # set plot
             type="l",                                     # set type - lines = l 
             ylab="Global Active Power (kilowatts)",       # set Y label
             xlab="")                                      # remove label from X
        dev.off()                                          # close garphics
}

plot2()                                                    # run function to save plot
