library(ggplot2)
library(reshape2)


#Private function to create a dataframe of a station's categories
create_categories <- function() {
   crime[(which(crime$Station == "Cape Town Central")), 3]   #create data frame
}


#Private function to prompt user into selecting a station's category
select_category <- function(station) {
  station_vector <- create_data_frame() #used for reference
  ANSWER <- menu(station_vector, title="Please enter in a category from the menu") #stores output into ANSWER variable
  station_vector[ANSWER] #returns value in indexed vector


}


#Function - average crime rate in a specific geographic location

  mean_crime <- function(station) {
    if  (grepl(station, create_categories(), ignore.case = TRUE)) stop("Please type in valid station.")

    cate <- select_category(station) #set cate as the output of select_category
    #average the crime rates in each year of the chosen station/category combination. Convert to numerical vector to average.
    mean(as.numeric(crime[which(crime$Station == station & crime$Category == cate), 4]))

  }

