##Return the number (count) of vowels in the given string.

##We will consider a, e, i, o, and u as vowels for this Kata.

##The input string will only consist of lower case letters and/or spaces.


get_count <- function(input_str){
s1 = unlist(strsplit(input_str,NULL))
vowel <- c("a","e","i","o","u")
sum(s1 %in% vowel)     
}

get_count("abracadabra")
