# The col_names argument
# Apart from path and sheet, there are several other arguments you can specify in read_excel(). One of these arguments is called col_names.
# 
# By default it is TRUE, denoting whether the first row in the Excel sheets contains the column names. If this is not the case, you can set col_names to FALSE. In this case, R will choose column names for you. You can also choose to set col_names to a character vector with names for each column. It works exactly the same as in the readr package.
# 
# You'll be working with the urbanpop_nonames.xlsx file. It contains the same data as urbanpop.xlsx but has no column names in the first row of the excel sheets.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Import the first Excel sheet of "urbanpop_nonames.xlsx" and store the result in pop_a. Have R set the column names of the resulting data frame itself.
# Import the first Excel sheet of urbanpop_nonames.xlsx; this time, use the cols vector that has already been preparedfor you to specify the column names. Store the resulting data frame in pop_b.
# Print out the summary of pop_a.
# Print out the summary of pop_b. Can you spot the difference with the other summary?


# Import the the first Excel sheet of urbanpop_nonames.xlsx (R gives names): pop_a
pop_a <- read_excel("urbanpop_nonames.xlsx",sheet=1,col_names=FALSE)
# Import the the first Excel sheet of urbanpop_nonames.xlsx (specify col_names): pop_b
cols <- c("country", paste0("year_", 1960:1966))
pop_b <- read_excel("urbanpop_nonames.xlsx",sheet=1,col_names=cols)
# Print the summary of pop_a
summary(pop_a)
# Print the summary of pop_b
summary(pop_b)