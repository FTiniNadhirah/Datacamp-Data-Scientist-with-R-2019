# Creating a data.table
# Just like how the data.frame() function can be used to create a data frame, you can create a data.table using the data.table() function. In this exercise, you will create the following data.table:
#   
#   X
# id value
# 1:  a   0.5
# 2:  b   1.0
# 3:  c   1.5
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the data.table package.
# Create the data.table X shown above. Note that the column id is of type character and value is of type numeric.


# The data.table package
library(data.table)

# Create my_first_data_table
X <- data.table(x = c("a", "b", "c"), y = c(0.5, 1.0, 1.5))

# View X
X