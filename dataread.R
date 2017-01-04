## Read data and subset
dataread <- function(){
  file_reduced <- "household_power_consumption_reduced.txt"
  filename <- "household_power_consumption.txt"
  
  ## Create a subsetted datafile
  if(!file.exists(file_reduced)){
    DF <- read.table(filename, 
                     header = TRUE, 
                     sep = ";", 
                     na = "?")
    
    date_subset <- c("1/2/2007", "2/2/2007")
    DF <- subset(DF, Date %in% date_subset)
    
    write.table(DF, 
                file = "household_power_consumption_reduced.txt", 
                row.names = FALSE, 
                na = "?",
                sep = ";")
  }
    
  # Read subsetted datafile
  DF <- read.table(file_reduced, 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c("character", "character", rep("numeric", 7)), 
                   na = "?")
  
  # Convert to date/time
  DF$Time <- strptime(paste(DF$Date, DF$Time), "%d/%m/%Y %H:%M:%S")
  DF$Date <- as.Date(DF$Date, format = "%d/%m/%Y")
  
  return(DF)
}