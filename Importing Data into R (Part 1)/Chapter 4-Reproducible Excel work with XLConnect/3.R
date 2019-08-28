# Customize readWorksheet
# To get a clear overview about urbanpop.xlsx without having to open up the Excel file, you can execute the following code:
#   
#   my_book <- loadWorkbook("urbanpop.xlsx")
# sheets <- getSheets(my_book)
# all <- lapply(sheets, readWorksheet, object = my_book)
# str(all)
# Suppose we're only interested in urban population data of the years 1968, 1969 and 1970. The data for these years is in the columns 3, 4, and 5 of the second sheet. Only selecting these columns will leave us in the dark about the actual countries the figures belong to.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Extend the readWorksheet() command with the startCol and endCol arguments to only import the columns 3, 4, and 5 of the second sheet.
# urbanpop_sel no longer contains information about the countries now. Can you write another readWorksheet() command that imports only the first column from the second sheet? Store the resulting data frame as countries.
# Use cbind() to paste together countries and urbanpop_sel, in this order. Store the result as selection.

# XLConnect is already available
# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")
# Import columns 3, 4, and 5 from second sheet in my_book: urbanpop_sel
urbanpop_sel <- readWorksheet(my_book, sheet = 2,startCol = 3,endCol = 5)
# Import first column from second sheet in my_book: countries
countries <- readWorksheet(my_book, sheet = 2, startCol = 1,endCol = 1)
# cbind() urbanpop_sel and countries together: selection
selection <- cbind(countries,urbanpop_sel)
