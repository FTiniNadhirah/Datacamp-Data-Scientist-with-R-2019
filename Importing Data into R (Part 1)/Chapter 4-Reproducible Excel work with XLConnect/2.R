# List and read Excel sheets
# Just as readxl and gdata, you can use XLConnect to import data from Excel file into R.
# 
# To list the sheets in an Excel file, use getSheets(). To actually import data from a sheet, you can use readWorksheet(). Both functions require an XLConnect workbook object as the first argument.
# 
# You'll again be working with urbanpop.xlsx. The my_book object that links to this Excel file has already been created.
# 
# Instructions
# 100 XP
# Print out the sheets of the Excel file that my_book links to.
# Import the second sheet in my_book as a data frame. Print it out.

# XLConnect is already available
# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")
# List the sheets in my_book
getSheets(my_book)
# Import the second sheet in my_book
readWorksheet(my_book,sheet=2)