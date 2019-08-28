# read_delim
# Just as read.table() was the main utils function, read_delim() is the main readr function.
# 
# read_delim() takes two mandatory arguments:
#   
#   file: the file that contains the data
# delim: the character that separates the values in the data file
# You'll again be working potatoes.txt; the file uses tabs ("\t") to delimit values and does not contain column names in its first line. It's available in your working directory so you can start right away. As before, the vector properties is available to set the col_names.
# 
# Instructions
# 100 XP
# Import all the data in "potatoes.txt" using read_delim(); store the resulting data frame in potatoes.
# Print out potatoes.

# readr is already loaded

# Column names
properties <- c("area", "temp", "size", "storage", "method",
                "texture", "flavor", "moistness")

# Import potatoes.txt using read_delim(): potatoes
potatoes<-read_delim("potatoes.txt",delim="\t",col_names=properties)

# Print out potatoes
potatoes