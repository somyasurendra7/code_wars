#The examples below show you how to write function accum:
#Examples:
#  accum("abcd")
#[1] "A-Bb-Ccc-Dddd"
#accum("RqaEzty")
#[1] "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
#accum("cwAt")
#[1] "C-Ww-Aaa-Tttt"

accum <- function(s){
  s_list <- unlist(strsplit(s,NULL))
  s1 <- list()
  for (n in 1:length(s_list)){
    s1[[n]]<- rep(tolower(s_list[n]),n)
    s1[[n]][1]<- toupper(s1[[n]][1])
  }
  paste(sapply(s1,paste,collapse = ""), collapse = "-")
  
}
accum("abcd")
