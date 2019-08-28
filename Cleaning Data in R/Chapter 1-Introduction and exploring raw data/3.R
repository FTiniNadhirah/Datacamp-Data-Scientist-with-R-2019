# Viewing the structure of your data
# Since bmi doesn't have a huge number of columns, you can view a quick snapshot of your data using the str() (for structure) command. In addition to the class and dimensions of your entire dataset, str() will tell you the class of each variable and give you a preview of its contents.
# 
# Although we won't go into detail on the dplyr package in this lesson (see the Data Manipulation in R with dplyr course), the glimpse() function from dplyr is a slightly cleaner alternative to str(). str() and glimpse() give you a preview of your data, which may reveal issues with the way columns are labelled, how variables are encoded, etc.
# 
# You can use the summary() command to get a better feel for how your data are distributed, which may reveal unusual or extreme values, unexpected missing data, etc. For numeric variables, this means looking at means, quartiles (including the median), and extreme values. For character or factor variables, you may be curious about the number of times each value appears in the data (i.e. counts), which summary() also reveals.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# View the structure of bmi using the traditional method.
# Load the dplyr package.
# View the structure of bmi using dplyr.
# Look at a summary() of bmi.

# Check the structure of bmi
str(bmi)

# Load dplyr
library(dplyr)

# Check the structure of bmi, the dplyr way
glimpse(bmi)

# View a summary of bmi
summary(bmi)
