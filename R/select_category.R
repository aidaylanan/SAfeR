library(ggplot2)
library(reshape2)


#Private function to create a vector of a station's categories
create_categories <- function() {
  crime[(which(crime$Station == "Cape Town Central" & crime$Year == 2005)), 3]   #create data frame

}


#Private function to prompt user into selecting a station's category
select_category <- function(station) {
  station_vector <- create_categories() #used for reference
  ANSWER <- menu(station_vector, title="Please enter in a category from the menu") #stores output into ANSWER variable
  station_vector[ANSWER] #returns value in indexed vector


}
