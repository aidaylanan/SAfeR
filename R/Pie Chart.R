attach(crime)
levels(crime$Category)

library("forcats")

x <- factor(c("All theft not mentioned elsewhere","Arson","Assault with the intent to inflict grievous bodily harm","Attempted murder","Bank robbery","Burglary at non-residential premises",
               "Burglary at residential premises","Carjacking","Commercial crime","Common assault","Common robbery","Driving under the influence of alcohol or drugs","Drug-related crime",
              "Illegal possession of firearms and ammunition","Malicious damage to property","Murder","Robbery at non-residential premises","Robbery at residential premises",
              "Robbery of cash in transit","Robbery with aggravating circumstances","Sexual Offences","Sexual offences as result of police action",
              "Shoplifting","Stock-theft","Theft of motor vehicle and motorcycle","Theft out of or from motor vehicle","Truck hijacking"))

Hey <- fct_recode(x, Assault = "Assault with the intent to inflict grievous bodily harm", Assault = "Attempted murder", Assault = "Common assault", Assault = "Sexual Offences", Assault = "Sexual offences as result of police action",Alcohol_and_drugs = "Drug-related crime", Alcohol_and_drugs = "Driving under the influence of alcohol or drugs", Murder = "Murder", Theft = "Stock-theft",
                  Theft = "Theft of motor vehicle and motorcycle", Theft = "Theft out of or from motor vehicle", Theft = "All theft not mentioned elsewhere", Burglary_at_non_residential_premises = "Robbery at non-residential premises", Burglary_at_non_residential_premises = "Bank robbery", Burglary_at_non_residential_premises = "Carjacking", Burglary_at_non_residential_premises = "Common robbery", Burglary_at_non_residential_premises = "Robbery of cash in transit",
                  Burglary_at_non_residential_premises = "Burglary at non-residential premises", Burglary_at_non_residential_premises = "Robbery with aggravating circumstances", Burglary_at_non_residential_premises = "Robbery with aggravating circumstances", Burglary_at_residential_premises = "Robbery at residential premises", Burglary_at_residential_premises = "Burglary at residential premises", Other = "Arson", Other = "Commercial crime", Other = "Illegal possession of firearms and ammunition",
                  Other = "Malicious damage to property", Other = "Truck hijacking", Burglary_at_non_residential_premises = "Shoplifting")

install.packages("dplyr")
library(dplyr)

View(crime)
crime<- cbind(crime$Category, crime1)
fix(crime)

library(ggplot2)

barplot_function1 <- function(Time_period) {
barplot1 <- ggplot(data = crime, aes(x = Province, y = Time_period, fill = Main_categories))+ geom_bar(width = 1, stat = "identity")+ labs(x = "Province", y = "Time_Period", title = "Crime rates broken down by main categories per province")
return(barplot1)
}

