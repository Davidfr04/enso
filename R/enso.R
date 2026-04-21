compute_season <- function(date) {
  mes<-substr(date,6,7)
  seasons<-c(
    "01"="Winter",
    "02"="Winter", 
    "03"="Winter",
    "04"="Spring", 
    "05"="Spring",
    "06"="Spring",
    "07"="Summer", 
    "08"="Summer",
    "09"="Summer",
    "10"="Fall",
    "11"="Fall",
    "12"="Fall")
  season<-seasons[[mes]]
}
