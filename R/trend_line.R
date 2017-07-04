
#' Title Create a trend line of all the crime rates in a specific geographic area
#'
#' @param station A valid station in the crime data frame, string
#'
#' @return A visualization of all the crime rates in a specific Station and Category
#' @export
#' @examples
#' trend_line("Cape Town Central)
#' trend_line("Aberdeen")
#'
trend_line <- function(station) {
  s1 <- sprintf("^%s$", station) #to error check for an exact match
  if  (any(grepl(s1, crime[,2])))  {
  cate <- select_category(station)
  ggplot((crime[which(crime$Station == station & crime$Category == cate), ]), aes(x=Year, y=Crime_Rate)) + geom_point() + geom_line(group=1)
  }
else {
  stop("Please type in valid station.")
}

}
