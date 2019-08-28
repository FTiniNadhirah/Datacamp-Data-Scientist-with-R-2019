# Variables to visuals, part 1b
# In the last exercise you saw how iris.tidy was used to make a specific plot. It's important to know how to rearrange your data in this way so that your plotting functions become easier. In this exercise you'll use functions from the tidyr package to convert iris to iris.tidy.
# 
# The resulting iris.tidy data should look as follows:
#   
#   Species  Part Measure Value
# 1  setosa Sepal  Length   5.1
# 2  setosa Sepal  Length   4.9
# 3  setosa Sepal  Length   4.7
# 4  setosa Sepal  Length   4.6
# 5  setosa Sepal  Length   5.0
# 6  setosa Sepal  Length   5.4
# ...
# You can have a look at the iris dataset by typing head(iris) in the console.
# 
# Note: If you're not familiar with %>%, gather() and separate(), you may want to take the Cleaning Data in R course. In a nutshell, a dataset is called tidy when every row is an observation and every column is a variable. The gather() function moves information from the columns to the rows. It takes multiple columns and gathers them into a single column by adding rows. The separate() function splits one column into two or more columns according to a pattern you define. Lastly, the %>% (or "pipe") operator passes the result of the left-hand side as the first argument of the function on the right-hand side.
# 
# Instructions
# 100 XP
# You'll use two functions from the tidyr package:
#   
#   gather() rearranges the data frame by specifying the columns that are categorical variables with a - notation. Complete the command. Notice that only one variable is categorical in iris.
# separate() splits up the new key column, which contains the former headers, according to .. The new column names "Part" and "Measure" are given in a character vector. Don't forget the quotes.

# Load the tidyr package
library(tidyr)

# Fill in the ___ to produce to the correct iris.tidy dataset
iris.tidy <- iris %>%
  gather(key, Value, -Species) %>%
  separate(key, c("Part", "Measure"), "\\.")

str(iris.tidy)