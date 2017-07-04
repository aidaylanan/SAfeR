#' Plot Types of Crime per Province of a Given Year
#'
#' @param year A specified year (found in the Year variable in the crime dataset)
#'
#' @return A bargraph of the types of crime per province of a given year
#' @export
#'
#' @examples
#' plotting_crime(2005)

library(forcats)
library(ggplot2)
library(dplyr)

plotting_crime <- function(year) {
  trythis <- fct_recode(crime$Category, Assault = "Assault with the intent to inflict grievous bodily harm", Assault = "Attempted murder", Assault = "Common assault", Assault = "Sexual Offences", Assault = "Sexual offences as result of police action",Alcohol_and_drugs = "Drug-related crime", Alcohol_and_drugs = "Driving under the influence of alcohol or drugs", Murder = "Murder", Theft = "Stock-theft",
                        Theft = "Theft of motor vehicle and motorcycle", Theft = "Theft out of or from motor vehicle", Theft = "All theft not mentioned elsewhere", Burglary_at_non_residential_premises = "Robbery at non-residential premises", Burglary_at_non_residential_premises = "Bank robbery", Burglary_at_non_residential_premises = "Carjacking", Burglary_at_non_residential_premises = "Common robbery", Burglary_at_non_residential_premises = "Robbery of cash in transit",
                        Burglary_at_non_residential_premises = "Burglary at non-residential premises", Burglary_at_non_residential_premises = "Robbery with aggravating circumstances", Burglary_at_non_residential_premises = "Robbery with aggravating circumstances", Burglary_at_residential_premises = "Robbery at residential premises", Burglary_at_residential_premises = "Burglary at residential premises", Other = "Arson", Other = "Commercial crime", Other = "Illegal possession of firearms and ammunition",
                        Other = "Malicious damage to property", Other = "Truck hijacking", Burglary_at_non_residential_premises = "Shoplifting")
  trythis <- as.vector(trythis)
  crime.appended <- crime
  crime.appended$Main_Category <- trythis
  ggplot(data = crime.appended, aes(x = Province, y = Crime_Rate, fill = Main_Category)) + geom_bar(width = 1, stat = "identity") +
    labs(x = "Province", y = "Number of Crimes", title = "Types of Crime per Province in a Given Year") +
    scale_fill_discrete(name = "Types of Crime", labels = c("Alcohol and Drugs", "Assault", "Burglary at Non-Residental Premises", "Burglary at Residental Premises", "Murder", "Other", "Theft"))
}

