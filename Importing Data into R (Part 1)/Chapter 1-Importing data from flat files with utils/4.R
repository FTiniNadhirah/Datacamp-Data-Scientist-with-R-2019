# read.table
# If you're dealing with more exotic flat file formats, you'll want to use read.table(). It's the most basic importing function; you can specify tons of different arguments in this function. Unlike read.csv() and read.delim(), the header argument defaults to FALSE and the sep argument is "" by default.
# 
# Up to you again! The data is still hotdogs.txt. It has no column names in the first row, and the field separators are tabs. This time, though, the file is in the data folder inside your current working directory. A variable path with the location of this file is already coded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Finish the read.table() call that's been prepared for you. Use the path variable, and make sure to set sep correctly.
# Call head() on hotdogs; this will print the first 6 observations in the data frame.

# Path to the hotdogs.txt file: path
path <- file.path("data", "hotdogs.txt")

# Import the hotdogs.txt file: hotdogs
hotdogs <- read.table(path, header = FALSE, sep="\t", col.names=c("type", "calories", "sodium"))

# Call head() on hotdogs
head(hotdogs)