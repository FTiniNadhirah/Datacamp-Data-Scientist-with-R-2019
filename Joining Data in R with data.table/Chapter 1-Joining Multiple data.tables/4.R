# Left join
# In this exercise, you will practice left joins! In a left join, rows from only the left (or the first) data.table will be retained.
# 
# Both netflix and imdb are available in your workspace.
# 
# Instructions
# 0 XP
# Use the merge() function to left join imdb to netflix.

# Left join imdb to netflix
merge(netflix, imdb, by = "title", all.x = TRUE)