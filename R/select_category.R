library(ggplot2)
library(reshape2)



#Private function to create a dataframe of a station's categories
create_data_frame <- function(x) {
  y <- data.frame (SACrimeStats[(which(SACrimeStats$Station == x)), 3])   #create data frame
  as.vector(y$Category) #converts data frame as vector
}


#Private function to prompt user into selecting a station's category
select_category <- function(station) {
  station_vector <- create_data_frame(station) #used for reference
  ANSWER <- menu(station_vector, title="Please enter in a category from the menu") #stores output into ANSWER variable
  station_vector[ANSWER] #returns value in indexed vector


}
