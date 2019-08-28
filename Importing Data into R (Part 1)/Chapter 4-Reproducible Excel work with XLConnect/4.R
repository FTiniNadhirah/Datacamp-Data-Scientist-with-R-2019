# Exercise
# Exercise
# Add worksheet
# Where readxl and gdata were only able to import Excel data, XLConnect's approach of providing an actual interface to an Excel file makes it able to edit your Excel files from inside R. In this exercise, you'll create a new sheet. In the next exercise, you'll populate the sheet with data, and save the results in a new Excel file.
# 
# You'll continue to work with urbanpop.xlsx. The my_book object that links to this Excel file is already available.
# 
# Instructions
# 100 XP
# Use createSheet(), to create a new sheet in my_book, named "data_summary".
# Use getSheets() to verify that my_book now represents an Excel file with four sheets.

# XLConnect is already available
# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")
# Add a worksheet to my_book, named "data_summary"
createSheet(my_book,name="data_summary")
# Use getSheets() on my_book
getSheets(my_book) 