# List the sheets of an Excel file
# Before you can start importing from Excel, you should find out which sheets are available in the workbook. You can use the excel_sheets() function for this.
# 
# You will find the Excel file urbanpop.xlsx in your working directory (type dir() to see it). This dataset contains urban population metrics for practically all countries in the world throughout time (Source: Gapminder). It contains three sheets for three different time periods. In each sheet, the first row contains the column names.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the readxl package using library(). It's already installed on DataCamp's servers.
# Use excel_sheets() to print out the names of the sheets in urbanpop.xlsx.

# Load the readxl package
library(readxl)
# Print out the names of both spreadsheets
excel_sheets("urbanpop.xlsx")