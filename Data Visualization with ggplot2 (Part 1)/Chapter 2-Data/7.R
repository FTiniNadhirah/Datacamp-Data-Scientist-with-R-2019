# Variables to visuals, part 2b
# In the last exercise you saw how iris.wide was used to make a specific plot. You also saw previously how you can derive iris.tidy from iris. Now you'll move on to produce iris.wide.
# 
# The head of the iris.wide should look like this in the end:
# 
#   Species  Part Length Width
# 1  setosa Petal    1.4   0.2
# 2  setosa Petal    1.4   0.2
# 3  setosa Petal    1.3   0.2
# 4  setosa Petal    1.5   0.2
# 5  setosa Petal    1.4   0.2
# 6  setosa Petal    1.7   0.4
# ...
# You can have a look at the iris dataset by typing head(iris) in the console.
# 
# Instructions
# 100 XP
# Before you begin, you need to add a new column called Flower that contains a unique identifier for each row in the data frame. This is because you'll rearrange the data frame afterwards and you need to keep track of which row, or which specific flower, each value came from. It's done for you, no need to add anything yourself.
# gather() rearranges the data frame by specifying the columns that are categorical variables with a - notation. In this case, Species and Flower are categorical. Complete the command.
# separate() splits up the new key column, which contains the former headers, according to .. The new column names "Part" and "Measure" are given in a character vector.
# The last step is to use spread() to distribute the new Measure column and associated value column into two columns.

# Load the tidyr package
library(tidyr)

# Add column with unique ids (don't need to change)
iris$Flower <- 1:nrow(iris)

# Fill in the ___ to produce to the correct iris.wide dataset
iris.wide <- iris %>%
  gather(key, value, -Flower, -Species) %>%
  separate(key, c("Part", "Measure"), "\\.") %>%
  spread(Measure, value)