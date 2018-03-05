##You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. 
#If the word's length is even, return the middle 2 characters.

get_middle <- function(s){
  len<- nchar(s)%%2
  i <- nchar(s)/2
    if (len != 0){
      substr(s, ceiling(i), ceiling(i))
  }else {
      substr(s, i, i+1)
      }
}
get_middle("yellow")
get_middle("hello")
