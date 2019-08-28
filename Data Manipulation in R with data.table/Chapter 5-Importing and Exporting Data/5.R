# Reading large integers
# When importing massive datasets, it may be desirable to import numbers without decimals as integers since integers take up less space. Base R functions (such as read.csv(), read.table(), etc.) do this by default when the numbers are less than 2^31 - 1 (or 2147483647). However, columns with numbers greater than this are imported as numeric type by default.
# 
# If the bit64 package is installed, fread() can import these columns with huge numbers as the integer64 type which is implemented in bit64 package, by default.
# 
# You will be importing the following file:
#   
#   id,name,val
# 9002019291929192,Robert Whitaker, 200
# 9200129401349301 ,Elisa Waters,190  
# 9200149429834456 , Karla Schmidt,458 
# Instructions
# 100 XP
# Import the sample.csv file using fread() and read.csv().
# Print the class of the id columns in fread_import and base_import.

# Import the file using fread 
fread_import <- fread("sample.csv")

# Import the file using read.csv 
base_import <- read.csv("sample.csv")

# Check the class of id column
class(fread_import$id)
class(base_import$id)