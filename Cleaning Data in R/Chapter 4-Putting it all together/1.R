# Get a feel for the data
# Before diving into our data cleaning routine, we must first understand the basic structure of the data. This involves looking at things like the class() of the data object to make sure it's what we expect (generally a data.frame) in addition to checking its dimensions with dim() and the column names with names().
# 
# Instructions
# 100 XP
# For the weather dataset, which is loaded in your workspace:
# 
# Check that it's a data.frame using the function class().
# Look at the dimensions.
# View the column names.


# Verify that weather is a data.frame
class(weather)

# Check the dimensions
dim(weather)

# View the column names
names(weather)