library(ggplot2)
library(reshape2)



#Private function to create a dataframe of a station's categories
create_data_frame <- function() {
  y <- crime[(which(crime$Station == "Cape Town Central")), 3]   #create data frame
  y[,1] #converts data frame as vector
}


#Private function to prompt user into selecting a station's category
select_category <- function(station) {
  station_vector <- create_data_frame(station) #used for reference
  ANSWER <- menu(station_vector, title="Please enter in a category from the menu") #stores output into ANSWER variable
  station_vector[ANSWER] #returns value in indexed vector


}


#use stringr package


#Function - create time series trend line for specific geographic area
#inputs -> Station

trend_line <- function(station) {
  cate <- select_category(station)
  #creates ggplot line, melt function turns wide-form data into long-form to reference the years as x variables and the value as y
  ggplot((crime[which(crime$Station == station & crime$Category == cate), 4]), aes(x=variable, y=value)) + geom_point() + geom_line(group=1)

}
