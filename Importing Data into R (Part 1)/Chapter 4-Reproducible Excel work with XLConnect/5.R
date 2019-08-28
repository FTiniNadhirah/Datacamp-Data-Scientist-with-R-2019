# Populate worksheet
# The first step of creating a sheet is done; let's populate it with some data now! summ, a data frame with some summary statistics on the two Excel sheets is already coded so you can take it from there.
# 
# Instructions
# 100 XP
# Use writeWorksheet() to populate the "data_summary" sheet with the summ data frame.
# Call saveWorkbook() to store the adapted Excel workbook as a new file, "summary.xlsx".

# Build connection to urbanpop.xlsx
my_book <- loadWorkbook("urbanpop.xlsx")
# Add a worksheet to my_book, named "data_summary"
createSheet(my_book, "data_summary")
# Create data frame: summ
sheets <- getSheets(my_book)[1:3]
dims <- sapply(sheets, function(x) dim(readWorksheet(my_book, sheet = x)), USE.NAMES = FALSE)
summ <- data.frame(sheets = sheets,
                   nrows = dims[1, ],
                   ncols = dims[2, ])
# Add data in summ to "data_summary" sheet
writeWorksheet(my_book,summ,sheet="data_summary")
# Save workbook as summary.xlsx
saveWorkbook(my_book,"summary.xlsx")