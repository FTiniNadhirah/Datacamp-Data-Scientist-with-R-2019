# fread
# You still remember how to use read.table(), right? Well, fread() is a function that does the same job with very similar arguments. It is extremely easy to use and blazingly fast! Often, simply specifying the path to the file is enough to successfully import your data.
# 
# Don't take our word for it, try it yourself! You'll be working with the potatoes.csv file, that's available in your workspace. Fields are delimited by commas, and the first line contains the column names.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the data.table package using library(). You do not need to install the package, it is already installed on DataCamp's servers.
# Import "potatoes.csv" with fread(). Simply pass it the file path and see if it worked. Store the result in a variable potatoes.
# Print out potatoes.
# load the data.table package
library(data.table)
# Import potatoes.csv with fread(): potatoes
potatoes<-fread("potatoes.csv")
# Print out potatoes
potatoes
