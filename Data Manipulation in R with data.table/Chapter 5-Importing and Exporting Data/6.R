# Specifying column classes
# The colClasses argument of fread() allows you to explicitly specify the class of the columns. You can specify the class of the columns as a character vector (as is done in base R functions such as read.csv()):
#   
#   colClasses = c("integer", rep("factor", 3), "character")
# However, this format requires you to specify the classes of all columns. This can be problematic if the file contains several columns and you only want to explicitly specify classes for some columns and leave the rest as default. You can use a more convenient list format for this purpose:
#   
#   colClasses = list(factor = 2:4)
# Here, the columns two through four are imported as factors and the rest are imported using fread()'s defaults.
# 
# Instructions 1/3
# 0 XP
# 1
# 2
# 3
# Import the sample.csv file using read.csv() and print the structure of base_r_defaults. Notice the column classes

# Import using read.csv with defaults
base_r_defaults <- read.csv("sample.csv")
str(base_r_defaults)

# Import the same file, but explicitly specify the column types. The first four columns should be imported as "factor"s, followed by "character", "integer", and then four "numeric" columns.

# Import using read.csv
base_r <- read.csv("sample.csv", 
                   colClasses = c(rep("factor", 4), 
                                  "character", "integer", 
                                  rep("numeric", 4)))
str(base_r)


# Use fread() to import the same file. Import columns 1 through 4 as factors, and columns 7 through 10 as numeric.

# Import using fread
import_fread <- fread("sample.csv", 
                      colClasses = list(factor = 1:4, numeric = 7:10))
str(import_fread)