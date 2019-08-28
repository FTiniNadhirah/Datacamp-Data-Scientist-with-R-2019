# Contingency table review
# In this chapter you'll continue working with the comics dataset introduced in the video. This is a collection of characteristics on all of the superheroes created by Marvel and DC comics in the last 80 years.
# 
# Let's start by creating a contingency table, which is a useful way to represent the total counts of observations that fall into each combination of the levels of categorical variables.
# 
# Instructions
# 100 XP
# The dataset has been loaded into your workspace as comics.
# 
# Type the name of the dataset to look at the rows and columns of the dataset.
# View the levels() that the align variable can take.
# View the levels() that the gender variable can take.
# Create a contingency table of the same two variables.

# Print the first rows of the data
head(comics)

# Check levels of align
levels(comics$align)
levels(comics$gender)

# Check the levels of gender

# Create a 2-way contingency table
table(comics$align, comics$gender)
comics