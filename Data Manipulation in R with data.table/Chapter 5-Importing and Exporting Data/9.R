# Writing files to disk
# fwrite() is a parallel file writer, and like fread(), it also has intelligent defaults.
# 
# For example, print dt in your console and notice that the column name has the first and last names separated with a , and the column val is of type list. fwrite() can automatically quote name column and add a secondary separator (the symbol for OR operator, |) for the list column.
# 
# Instructions
# 100 XP
# Write dt to disk using the file name "fwrite.txt".
# Import the file using readLines() to verify that the name column is quoted automatically and the list column is separated with |.
# Import the file using fread().

# Write dt to fwrite.txt
fwrite(dt, "fwrite.txt")

# Import the file using readLines()
readLines("fwrite.txt")

# Import the file using fread()
fread("fwrite.txt")