# Renaming sheets
# Come to think of it, "data_summary" is not an ideal name. As the summary of these excel sheets is always data-related, you simply want to name the sheet "summary".
# 
# The workspace already contains a workbook, my_book, that refers to an Excel file with 4 sheets: the three data sheets, and the "data_summary" sheet.
# 
# Instructions
# 100 XP
# Use renameSheet() to rename the fourth sheet to "summary".
# Next, call getSheets() on my_book to print out the sheet names.
# Finally, make sure to actually save the my_book object to a new Excel file, "renamed.xlsx".

# my_book is available
# Rename "data_summary" sheet to "summary"
renameSheet(my_book,"data_summary","summary")
# Print out sheets of my_book
getSheets(my_book)
# Save workbook to "renamed.xlsx"
saveWorkbook(my_book,"renamed.xlsx") 