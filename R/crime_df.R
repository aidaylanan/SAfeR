#' Dataset of Crime in South Africa
#'
#' A dataset containing the number of crimes committed, per category of crime, in a given province and police station.
#' Includes data collected from 2005 to 2015.
#'
#' @format A data frame with 339471 records and 5 variables:
#' \describe{
#'   \item{Province}{South African Province;}
#'   \item{Station}{Police Station in Respective Province;}
#'   \item{Category}{Types of Crime Committed;}
#'   \item{Year}{Year in which Crimes were Committed;}
#'   \item{Crime_Rate}{Number of Crimes Committed in a Given Year;}
#' }
#' @source
#' These data were downloaded from Kaggle user Stephan Wessels, retrievable here: https://www.kaggle.com/slwessels/crime-statistics-for-south-africa.
#' @examples
#' mean_crime("Cape Town Central", data = crime)

library(tidyr)
if(FALSE) {
  # Tidy the dataset by turning column values into row values
    crime <- gather(crime, Year, Crime_Rate, -Province, -Station, -Category)
  # Fix row values into single years
    crime$Year <- substr(crime[[4]], 2, 5)
  # Save data into repository
    devtools::use_data(crime, overwrite = TRUE)
}
