library(ggplot2)
library(reshape2)


#Private function to create a dataframe of a station's categories
create_data_frame <- function(x) {
  y <- data.frame (crime[(which(crime$Station == x)), 3])   #create data frame
  as.vector(y[,1]) #converts data frame as vector
}


#Private function to prompt user into selecting a station's category
select_category <- function(station) {
  station_vector <- create_data_frame(station) #used for reference
  ANSWER <- menu(station_vector, title="Please enter in a category from the menu") #stores output into ANSWER variable
  station_vector[ANSWER] #returns value in indexed vector


}


#Function - average crime rate in a specific geographic location

mean_crime <- function(station) {
  cate <- select_category(station) #set cate as the output of select_category
  #sum the crime rates in each year of the chosen station/category combination. Convert to numerical vector to sum.
  mean(as.numeric(crime[which(crime$Station == station & crime$Category == cate), 4:14]))

  #still need to add error checking -- returns NA if cannot be summed, change that to 0, or if they add a non-existant station
}
