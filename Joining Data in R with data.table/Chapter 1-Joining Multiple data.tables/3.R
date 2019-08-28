# Full join
# Using the same data.tables as the previous exercise, this time use merge() to perform a full join to build a new data.table containing all rows present in either netflix or imdb.
# 
# Instructions 1/2
# 0 XP
# Use the merge() function to full join the netflix and imdb data.tables.
# Full join netflix and imdb
merge(netflix, imdb, by = "title", all = TRUE)

# Try swapping the order of the netflix and imdb data.tables in the merge function to see what changes!
# Full join imdb and netflix
merge(imdb, netflix, by = "title", all = TRUE)