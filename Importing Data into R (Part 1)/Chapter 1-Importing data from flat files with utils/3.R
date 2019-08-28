# read.delim
# Aside from .csv files, there are also the .txt files which are basically text files. You can import these functions with read.delim(). By default, it sets the sep argument to "\t" (fields in a record are delimited by tabs) and the header argument to TRUE (the first row contains the field names).
# 
# In this exercise, you will import hotdogs.txt, containing information on sodium and calorie levels in different hotdogs (Source: UCLA). The dataset has 3 variables, but the variable names are not available in the first line of the file. The file uses tabs as field separators.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Import the data in "hotdogs.txt" with read.delim(). Call the resulting data frame hotdogs. The variable names are not on the first line, so make sure to set the header argument appropriately.
# Call summary() on hotdogs. This will print out some summary statistics about all variables in the data frame.

# Import hotdogs.txt: hotdogs
hotdogs <- read.delim("hotdogs.txt", header=FALSE)

# Name the columns of hotdogs appropriately
names(hotdogs) <- c("type", "calories", "sodium")

# Summarize hotdogs
summary(hotdogs)