# Importing a CSV file
# In this exercise, you will import the file sample.csv using both read.csv() and fread() to compare these functions. Here are the contents of this file:
#   
#   id,"name",val
# 29192,"Robert Whitaker", 200
# 49301 ,"Elisa Waters,190  
# The values in the file are separated by a comma. Note the unwanted spaces between entries, and the imbalanced quote in the second row.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Instructions 1/2
# 50 XP
# 1
# 2
# Import the file sample.csv available in your workspace using read.csv(). Don't modify the arguments.
# 
# Import using read.csv()
csv_file <- read.csv("sample.csv", fill = NA, quote = "", 
                     stringsAsFactors = FALSE, strip.white = TRUE, 
                     header = TRUE)
csv_file

# Import the file sample.csv available in your workspace using fread().

# Import using fread()
csv_file <- fread("sample.csv")
csv_file