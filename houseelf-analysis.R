#Author: Sumon Datta
#Date: 10-19-2017
#Assignment 7 version control basics

#part 1
#setup Git

#Part 2
#This analysis is intended to categorize the ear length and get the type of sequences 
#of each id and categorize them by length

get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
