# Import an Excel sheet
# Now that you know the names of the sheets in the Excel file you want to import, it is time to import those sheets into R. You can do this with the read_excel() function. Have a look at this recipe:
#   
#   data <- read_excel("data.xlsx", sheet = "my_sheet")
# This call simply imports the sheet with the name "my_sheet" from the "data.xlsx" file. You can also pass a number to the sheet argument; this will cause read_excel() to import the sheet with the given sheet number. sheet = 1 will import the first sheet, sheet = 2 will import the second sheet, and so on.
# 
# In this exercise, you'll continue working with the urbanpop.xlsx file.
# 
# Instructions
# 100 XP
# The code to import the first and second sheets is already included. Can you add a command to also import the third sheet, and store the resulting data frame in pop_3?
# Store the data frames pop_1, pop_2 and pop_3 in a list, that you call pop_list.
# Display the structure of pop_list.

# Read the sheets, one by one
pop_1 <- read_excel("urbanpop.xlsx", sheet = 1)
pop_2 <- read_excel("urbanpop.xlsx", sheet = 2)
pop_3 <- read_excel("urbanpop.xlsx", sheet = 3)
# Put pop_1, pop_2 and pop_3 in a list: pop_list
pop_list<-list(pop_1,pop_2,pop_3)
# Display the structure of pop_list
str(pop_list)