# Looking at your data
# You can look at all the summaries you want, but at the end of the day, there is no substitute for looking at your data -- either in raw table form or by plotting it.
# 
# The most basic way to look at your data in R is by printing it to the console. As you may know from experience, the print() command is not even necessary; you can just type the name of the object. The downside to this option is that R will attempt to print the entire dataset, which can be a nuisance if the dataset is too large.
# 
# One way around this is to use the head() and tail() commands, which only display the first and last 6 rows of data, respectively. You can view more (or fewer) rows by providing as a second argument to the function the number of rows you wish to view. These functions provide a useful method for quickly getting a sense of your data without overly cluttering the console.
# 
# Instructions
# 100 XP
# Print the full dataset to the console (you don't need print() to do this).
# View the first 6 rows of bmi.
# View the first 15 rows of bmi.
# View the last 6 rows of bmi.
# View the last 10 rows of bmi.

# Print bmi to the console
print(bmi)

# View the first 6 rows
head(bmi)

# View the first 15 rows
head(bmi,15)

# View the last 6 rows
tail(bmi)

# View the last 10 rows
tail(bmi,10)

