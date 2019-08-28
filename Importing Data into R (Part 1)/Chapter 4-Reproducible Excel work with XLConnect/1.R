# Connect to a workbook
# When working with XLConnect, the first step will be to load a workbook in your R session with loadWorkbook(); this function will build a "bridge" between your Excel file and your R session.
# 
# In this and the following exercises, you will continue to work with urbanpop.xlsx, containing urban population data throughout time. The Excel file is available in your current working directory.
# 
# Instructions
# 100 XP
# Load the XLConnect package using library(); it is already installed on DataCamp's servers.
# Use loadWorkbook() to build a connection to the "urbanpop.xlsx" file in R. Call the workbook my_book.
# Print out the class of my_book. What does this tell you?

# urbanpop.xlsx is available in your working directory
# Load the XLConnect package
library(XLConnect)
# Build connection to urbanpop.xlsx: my_book
my_book <- loadWorkbook("urbanpop.xlsx")
# Print out the class of my_book
class(my_book)