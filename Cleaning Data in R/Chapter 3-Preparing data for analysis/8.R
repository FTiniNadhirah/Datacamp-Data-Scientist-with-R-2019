# Dealing with missing values
# Missing values can be a rather complex subject, but here we'll only look at the simple case where you are simply interested in normalizing and/or removing all missing values from your data. For more information on why this is not always the best strategy, search online for "missing not at random."
# 
# Looking at the social_df dataset again, we asked around a bit and figured out what's causing the missing values that you saw in the last exercise. Tom doesn't have a social media account on this particular platform, which explains why his number of friends and current status are missing (although coded in two different ways). Alice is on the platform, but is a passive user and never sets her status, hence the reason it's missing for her.
# 
# The stringr package is preloaded.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Replace all empty strings (i.e. "") with NA in the status column of social_df.
# Print the updated version of social_df to confirm your changes.
# Use complete.cases() to return a vector containing TRUE and FALSE to see which rows have NO missing values.
# Use na.omit() to remove all rows with one or more missing values (without saving the result).

# Replace all empty strings in status with NA
social_df$status[social_df$status == ""] <- NA

# Print social_df to the console
social_df

# Use complete.cases() to see which rows have no missing values
complete.cases(social_df)

# Use na.omit() to remove all rows with any missing values
na.omit(social_df)