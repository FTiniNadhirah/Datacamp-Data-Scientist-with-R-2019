# Inner join
# Two data.tables are available in your workspace:
#   
#   netflix: contains a selection of original series released by Netflix in 2017
# imdb: contains average user ratings for a selection of TV shows and movies from IMDB.
# Your goal is use the merge() function to perform an inner join to build a new data.table containing all series from netflix that have a rating in imdb.
# 
# Instructions 2/2
# 90 XP
# 2
# 
# Remind yourself of the contents of both data.tables by printing them.
# Print the data.tables in your R session
netflix
imdb

# Use the correct column to inner join netflix and imdb using the merge() function.
# # Inner join netflix and imdb
merge(netflix, imdb, by = "title")


