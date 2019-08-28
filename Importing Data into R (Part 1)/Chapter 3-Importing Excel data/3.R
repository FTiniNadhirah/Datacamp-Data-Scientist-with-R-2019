# Reading a workbook
# In the previous exercise you generated a list of three Excel sheets that you imported. However, loading in every sheet manually and then merging them in a list can be quite tedious. Luckily, you can automate this with lapply(). If you have no experience with lapply(), feel free to take Chapter 4 of the Intermediate R course.
# 
# Have a look at the example code below:
#   
#   my_workbook <- lapply(excel_sheets("data.xlsx"),
#                         read_excel,
#                         path = "data.xlsx")
# The read_excel() function is called multiple times on the "data.xlsx" file and each sheet is loaded in one after the other. The result is a list of data frames, each data frame representing one of the sheets in data.xlsx.
# 
# You're still working with the urbanpop.xlsx file.
# 
# Instructions
# 100 XP
# Use lapply() in combination with excel_sheets() and read_excel() to read all the Excel sheets in "urbanpop.xlsx". Name the resulting list pop_list.
# Print the structure of pop_list.

# The readxl package is already loaded
# Read all Excel sheets with lapply(): pop_list
pop_list<- lapply(excel_sheets("urbanpop.xlsx"),read_excel,path="urbanpop.xlsx")
# Display the structure of pop_list
str(pop_list)