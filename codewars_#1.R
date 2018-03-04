s = "abcd\nefgh\nijkl\nmnop"
     

##You are given a string of n lines, each substring being n characters long: For example:
#We will study some transformations of this square of strings.
#Vertical mirror: vert_mirror (or vertMirror or vert-mirror)
#vert_mirror(s) => "dcba\nhgfe\nlkji\nponm"
#Horizontal mirror: hor_mirror (or horMirror or hor-mirror)
#hor_mirror(s) => "mnop\nijkl\nefgh\nabcd"
###Task:
#Write these two functions
#and
#high-order function oper(fct, s) where
#fct is the function of one variable f to apply to the string s (fct will be one of vertMirror, horMirror)
s1 <- unlist(strsplit(s,NULL))
s1

reverse_string<- function(s){
  paste(rev(unlist(s1)), collapse = "")
}

vertMirror <- function(s) {
  
  s2<- unlist(strsplit(s, split = "\n"))
  paste0(sapply(s2,function(x) reverse_string(x)), collapse =" \n")
  
}
horMirror <- function(s) {
  s2 <- unlist(strsplit(s, split ="\n"))
  paste0(rev(s2),collapse="\n")    
}
oper <- function(f, s) {
  f(s)
}