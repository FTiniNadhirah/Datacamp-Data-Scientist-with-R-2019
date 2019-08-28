# A closer look at column types
# It's important for analysis that variables are coded appropriately. This is not yet the case with our weather data. Recall that functions such as as.numeric() and as.character() can be used to coerce variables into different types.
# 
# It's important to keep in mind that coercions are not always successful, particularly if there's some data in a column that you don't expect. For example, the following will cause problems:
#   
#   as.numeric(c(4, 6.44, "some string", 222))
# If you run the code above in the console, you'll get a warning message saying that R introduced an NA in the process of coercing to numeric. This is because it doesn't know how to make a number out of a string ("some string"). Watch out for this in our weather data!
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Use str() to see how variables are stored in weather5.
# View the first 20 rows of weather5. Keep an eye out for strange values!
#   Try coercing the PrecipitationIn column of weather5 to numeric without saving the result.

# View the structure of weather5
str(weather5)

# Examine the first 20 rows of weather5. Are most of the characters numeric?
head(weather5, 20)

# See what happens if we try to convert PrecipitationIn to numeric
as.numeric(weather5$PrecipitationIn)