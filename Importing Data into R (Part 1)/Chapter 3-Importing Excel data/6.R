# Import a local file
# In this part of the chapter you'll learn how to import .xls files using the gdata package. Similar to the readxl package, you can import single Excel sheets from Excel sheets to start your analysis in R.
# 
# You'll be working with the urbanpop.xls dataset, the .xls version of the Excel file you've been working with before. It's available in your current working directory.
# 
# Instructions
# 100 XP
# Load the gdata package with library(). gdata and Perl are already installed on DataCamp's Servers.
# Import the second sheet, named "1967-1974", of "urbanpop.xls" with read.xls(). Store the resulting data frame as urban_pop.
# Print the first 11 observations of urban_pop with head().


# Load the gdata package
library(gdata)
# Import the second sheet of urbanpop.xls: urban_pop
urban_pop <- read.xls("urbanpop.xls",sheet="1967-1974")
# Print the first 11 observations using head()
head(urban_pop,n=11) 