#Author: Sumon Datta
#Date: 10-19-2017
#Assignment 7 version control basics

#part 1: Setup Git
#setup Git

#part 2: First commit
#This analysis is intended to categorize the ear length and get the type of sequences 
#of each id and categorize them by length

#part 3: importing data

elf<-read.csv("./data/houseelf_earlength_dna_data_1.csv", header = TRUE, sep = ",")
#the file above was also comitted to version control

#part 4

#data file was renamed to _1 and committed to version control

#part 5 adding a remote
#created account in github and then created public repository and integrated the repository with 
#desktop version through adding command lines in shell

#part6: pushing changes
library (stringr)
gc_cont <- function (seq){
  Gs <- str_count (str_to_upper(seq), "G")
  Cs <- str_count(str_to_upper(seq), "C")
  gc_content_any <- (Gs + Cs) / (str_length(seq)) * 100
  return (gc_content_any)
}

print (gc_content <- gc_cont (elf$dnaseq))

#part 7 Pulling and pushing

get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}
print (ear_class <- get_size_class(elf$earlength))

print (combined_data <- data.frame(elf$id, ear_class, gc_content))

write.csv (combined_data, "./elf-data_final.csv")

get_size_class <- function(ear_length){
   # Calculate the size class for one or more earth lengths
   ear_lengths <- ifelse(ear_length > 10, "large", "small")
   return(ear_lengths)
}

#END OF CODE
