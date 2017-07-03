#' Title
#'
#' @param station
#' @param year
#'
#' @return
#' @export
#'
#' @examples
#' STATion("Cape Town Central", 2005)
#'

STATion <- function(station, year) {
  sta <- crime[which(crime[,2] == station), ]
  yea <- sta[which(sta[,4] == year), ]
  subset.crime <- data.frame(Category = yea$Category, Crime_Rate = yea$Crime_Rate)
}

