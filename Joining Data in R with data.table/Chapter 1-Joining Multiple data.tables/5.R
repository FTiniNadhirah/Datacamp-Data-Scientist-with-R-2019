# Right join
# In this exercise, you will right join imdb to netflix. The resulting data.table should contain all entries from imdb with the release date and the number of episodes added for titles that are also listed in the netflix data.table.
# 
# Instructions 1/2
# 50 XP
# 2
# Use the merge() function to right join imdb to netflix.

# Right join imdb to netflix
merge(netflix, imdb, by = "title", all.y = TRUE)

# Compare the right join you performed in the previous step to the left join of netflix to imdb.

# Compare to a left join of netflix to imdb
merge(imdb, netflix, by = "title", all.x = TRUE)