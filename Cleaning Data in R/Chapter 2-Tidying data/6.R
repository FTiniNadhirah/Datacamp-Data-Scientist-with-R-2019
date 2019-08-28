# Variables are stored in both rows and columns
# Sometimes you'll run into situations where variables are stored in both rows and columns. To illustrate this, we've loaded the pets dataset from the video, which tells us in a convoluted way how many birds, cats, and dogs Jason, Lisa, and Terrence have. Print the pets dataset to see for yourself.
# 
# Although it may not be immediately obvious, if we treat the values in the type column as variables and create a separate column for each of them, we can set things straight. To do this, we use the spread() function. Run the following code to see for yourself:
#   
#   spread(pets, type, num)
# The result shows the exact same information in a much clearer way! Notice that the spread() function took in three arguments. The first argument takes the name of your messy dataset (pets), the second argument takes the name of the column to spread into new columns (type), and the third argument takes the column that contains the value with which to fill in the newly spread out columns (num).
# 
# Now let's try this on a new messy dataset census_long. What information does this tell us?
# 
# tidyr and dplyr are already loaded for you.
# 
# Instructions
# 100 XP
# View the first 50 rows of census_long.
# Decide which column of census_long would be best to spread, and which column of census_long would be best to display in the newly spread out columns. Use the spread() function accordingly and save the result to census_long2.
# View the first 20 rows of census_long2.


census_long <- readRDS('data/census_long.rds')


# View first 50 rows of census_long
head(census_long, 50)

# Spread the type column
census_long2 <- spread(census_long, type, amount)

# View first 20 rows of census_long2
head(census_long2, 20)