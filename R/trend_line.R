




#Function - create time series trend line for specific geographic area
#inputs -> Station

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
