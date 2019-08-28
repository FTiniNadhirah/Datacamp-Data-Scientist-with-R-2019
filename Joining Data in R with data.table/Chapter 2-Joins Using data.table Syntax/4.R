# Setting keys
# The netflix and imdb data.tables are available in your workspace. Your goal is to set the keys for both data.tables so that you can perform a series of joins without needing to specify the join keys each time.
# 
# Instructions
# 100 XP
# Set title as the key of both netflix and imdb using setkey().
# Inner join imdb to netflix without specifying the on argument.

# Set the keys
setkey(netflix, "title")
setkey(imdb, "title")

# Inner join
netflix[imdb, nomatch = 0]