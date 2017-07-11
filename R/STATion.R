#' Crimes Most Frequently Committed in a Given Station, Year
#'
#' @param station A specified South African Police Station (found in the Station variable in the crime dataset)
#' @param year A specified year (found in the Year variable in the crime dataset)
#'
#' @return A barplot of the top three most frequently committed crimes in a specified year and station.
#' @export
#'
#' @examples
#' max_crime("Cape Town Central", 2005)
#' max_crime("Park Road", 2010)


STATion <- function(station, year) {
  sta <- crime[which(crime[,2] == station), ]
  yea <- sta[which(sta[,4] == year), ]
  subset.crime <- data.frame(Category = yea$Category, Crime_Rate = yea$Crime_Rate)
  subset.crime %>% head(n = 3)
}

max_crime <- function(station, year){
  top <- STATion(station, year)
  ggplot(top, aes(Category, Crime_Rate)) + geom_bar(stat = "identity", fill = "red") + theme_economist_white() +
    labs(title = "Most Frequent Crimes Committed", x = "Types of Crimes", y = "Number of Reports")
}





