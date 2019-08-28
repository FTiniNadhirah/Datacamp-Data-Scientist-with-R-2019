# Work that Excel data!
#   Now that you can read in Excel data, let's try to clean and merge it. You already used the cbind() function some exercises ago. Let's take it one step further now.
# 
# The urbanpop.xls dataset is available in your working directory. The file still contains three sheets, and has column names in the first row of each sheet.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Add code to read the data from the third sheet in "urbanpop.xls". You want to end up with three data frames: urban_sheet1, urban_sheet2 and urban_sheet3.
# Extend the cbind() call so that it also includes urban_sheet3. Make sure the first column of urban_sheet2 and urban_sheet3 are removed, so you don't have duplicate columns. Store the result in urban.
# Use na.omit() on the urban data frame to remove all rows that contain NA values. Store the cleaned data frame as urban_clean.
# Print a summary of urban_clean and assert that there are no more NA values.

# Add code to import data from all three sheets in urbanpop.xls
path <- "urbanpop.xls"
urban_sheet1 <- read.xls(path, sheet = 1, stringsAsFactors = FALSE)
urban_sheet2 <- read.xls(path, sheet = 2, stringsAsFactors = FALSE)
urban_sheet3 <- read.xls(path, sheet = 3, stringsAsFactors = FALSE)
# Extend the cbind() call to include urban_sheet3: urban
urban <- cbind(urban_sheet1, urban_sheet2[-1],urban_sheet3[-1])
# Remove all rows with NAs from urban: urban_clean
urban_clean <- na.omit(urban)
# Print out a summary of urban_clean
summary(urban_clean)