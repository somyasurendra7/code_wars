## Check to see if a string has the same amount of 'x's and 'o's. 
## The method must return a boolean and be case insensitive. The string can contain any char.

xo <- function(s){
  m <- sapply(gregexpr("x",s, ignore.case = TRUE), function(i) sum(i>= 0))
  n <- sapply(gregexpr("o",s, ignore.case = TRUE), function(j) sum(j>= 0))  
  if (m == n) {
    as.logical(m)
  }else if((m == 0)&&(n == 0)) {
   as.logical(m)
  } 
  else {
    is.character(m)  }
}

xo("zpzppp")
