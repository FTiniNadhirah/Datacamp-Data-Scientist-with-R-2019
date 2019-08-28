# Finding missing values
# As you've seen, missing values in R should be represented by NA, but unfortunately you will not always be so lucky. Before you can deal with missing values, you have to find them in the data.
# 
# If missing values are properly coded as NA, the is.na() function will help you find them. Otherwise, if your dataset is too big to just look at the whole thing, you may need to try searching for some of the usual suspects like "", "#N/A", etc. You can also use the summary() and table() functions to turn up unexpected values in your data.
# 
# In this exercise, we've created a simple dataset called social_df that has 3 pieces of information for each of four friends:
#   
#   Name
# Number of friends on a popular social media platform
# Current "status" on the platform
# Instructions
# 100 XP
# Instructions
# 100 XP
# Call is.na() on social_df to spot all NA values.
# Wrap the above with the any() function to ask the question "Are there any NA values in my dataset?".
# View a summary() of the dataset to see how missing values are broken out.
# Use table to identify odd values of the status variable.

# Call is.na() on the full social_df to spot all NAs
is.na(social_df)

# Use the any() function to ask whether there are any NAs in the data
any(is.na(social_df))

# View a summary() of the dataset
summary(social_df)

# Call table() on the status column
table(social_df$status)