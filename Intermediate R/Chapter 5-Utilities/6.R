# grepl & grep
# In their most basic form, regular expressions can be used to see whether a pattern exists inside a character string or a vector of character strings. For this purpose, you can use:
#   
#   grepl(), which returns TRUE when a pattern is found in the corresponding character string.
# grep(), which returns a vector of indices of the character strings that contains the pattern.
# Both functions need a pattern and an x argument, where pattern is the regular expression you want to match for, and the x argument is the character vector from which matches should be sought.
# 
# In this and the following exercises, you'll be querying and manipulating a character vector of email addresses! The vector emails has already been defined in the editor on the right so you can begin with the instructions straight away!
# 
# Instructions
# 100 XP
# Use grepl() to generate a vector of logicals that indicates whether these email addressess contain "edu". Print the result to the output.
# Do the same thing with grep(), but this time save the resulting indexes in a variable hits.
# Use the variable hits to select from the emails vector only the emails that contain "edu".

# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for "edu"
grepl(pattern = "edu", x = emails)

# Use grep() to match for "edu", save result to hits
hits <- grep(pattern = "edu", x = emails)

# Subset emails using hits
emails[hits]