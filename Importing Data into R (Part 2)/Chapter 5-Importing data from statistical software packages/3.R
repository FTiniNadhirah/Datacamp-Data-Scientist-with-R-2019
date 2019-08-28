# Import SPSS data with haven
# The haven package can also import data files from SPSS. Again, importing the data is pretty straightforward. Depending on the SPSS data file you're working with, you'll need either read_sav() - for .sav files - or read_por() - for .por files.
# 
# In this exercise, you will work with data on four of the Big Five personality traits for 434 persons (Source: University of Bath). The Big Five is a psychological concept including, originally, five dimensions of personality to classify human personality. The SPSS dataset is called person.sav and is available in your working directory.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use read_sav() to import the SPSS data in "person.sav". Name the imported data frame traits.
# traits contains several missing values, or NAs. Run summary() on it to find out how many NAs are contained in each variable.
# Print out a subset of those individuals that scored high on Extroversion and on Agreeableness, i.e. scoring higher than 40 on each of these two categories. You can use subset() for this.

# haven is already loaded
# Import person.sav: traits
traits <- read_sav("person.sav")
# Summarize traits
summary(traits)
# Print out a subset
subset(traits,Extroversion > 40 &Agreeableness >40)