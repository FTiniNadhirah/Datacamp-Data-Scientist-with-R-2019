# read.xls() wraps around read.table()
# Remember how read.xls() actually works? It basically comes down to two steps: converting the Excel file to a .csv file using a Perl script, and then reading that .csv file with the read.csv() function that is loaded by default in R, through the utils package.
# 
# This means that all the options that you can specify in read.csv(), can also be specified in read.xls().
# 
# The urbanpop.xls dataset is already available in your workspace. It's still comprised of three sheets, and has column names in the first row of each sheet.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Finish the read.xls() call that reads data from the second sheet of urbanpop.xls: skip the first 50 rows of the sheet. Make sure to set header appropriately and that the country names are not imported as factors.
# Print the first 10 observations of urban_pop with head().

# The gdata package is alreaded loaded
# Column names for urban_pop
columns <- c("country", paste0("year_", 1967:1974))
# Finish the read.xls call
urban_pop <- read.xls("urbanpop.xls", sheet = 2,
                      skip = 50, header = FALSE, stringsAsFactors = FALSE,
                      col.names = columns)
# Print first 10 observation of urban_pop
head(urban_pop,n=10)