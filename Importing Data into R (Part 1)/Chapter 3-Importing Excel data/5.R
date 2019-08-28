# The skip argument
# Another argument that can be very useful when reading in Excel files that are less tidy, is skip. With skip, you can tell R to ignore a specified number of rows inside the Excel sheets you're trying to pull data from. Have a look at this example:
# 
# read_excel("data.xlsx", skip = 15)
# In this case, the first 15 rows in the first sheet of "data.xlsx" are ignored.
# 
# If the first row of this sheet contained the column names, this information will also be ignored by readxl. Make sure to set col_names to FALSE or manually specify column names in this case!
# 
# The file urbanpop.xlsx is available in your directory; it has column names in the first rows.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Import the second sheet of "urbanpop.xlsx", but skip the first 21 rows. Make sure to set col_names = FALSE. Store the resulting data frame in a variable urbanpop_sel.
# Select the first observation from urbanpop_sel and print it out.

# The readxl package is already loaded
# Import the second sheet of urbanpop.xlsx, skipping the first 21 rows: urbanpop_sel
urbanpop_sel <-read_excel("urbanpop.xlsx",sheet=2,col_names = FALSE,skip=21)
# Print out the first observation from urbanpop_sel
urbanpop_sel[1,]
