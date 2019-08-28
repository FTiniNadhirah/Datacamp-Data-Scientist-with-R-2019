# Removing sheets
# After presenting the new Excel sheet to your peers, it appears not everybody is a big fan. Why summarize sheets and store the info in Excel if all the information is implicitly available? To hell with it, just remove the entire fourth sheet!
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Load the XLConnect package.
# Build a connection to "renamed.xlsx", the Excel file that you've built in the previous exercise; it's available in your working directory. Store this connection as my_book.
# Use removeSheet() to remove the fourth sheet from my_book. The sheet name is "summary". Recall that removeSheet() accepts either the index or the name of the sheet as the second argument.
# Save the resulting workbook, my_book, to a file "clean.xlsx".

# Load the XLConnect package
library(XLConnect)
# Build connection to renamed.xlsx: my_book
my_book <- loadWorkbook("renamed.xlsx")
# Remove the fourth sheet
removeSheet(my_book,sheet=4)
# Save workbook to "clean.xlsx"
saveWorkbook(my_book,"clean.xlsx")
