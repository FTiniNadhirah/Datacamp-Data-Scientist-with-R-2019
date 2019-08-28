# Filtering rows using negative integers\
# Sometimes, instead of selecting all of the rows you want individually, it makes sense to deselect the rows you do not want to include. Recall that this can be done using either the ! or the - operators.
# 
# For example, dt[-(1:5)] returns all rows except the first five.
# 
# Note: dt[-(1:5)] is equivalent to dt[!(1:5)].
# 
# Instructions 3/3
# 0 XP
# Use negative indexing to exclude the first two rows in batrips.
# 
# Use negative indexing to exclude rows 1 through 5 and 10 through 15 in batrips.
# 
# # Use negative indexing to exclude the first and last rows in batrips


# Select all rows except the first and last
not_first_last <- batrips[-c(1, .N)] # Or batrips[-c(1, nrow(batrips))]
not_first_last

# Select all rows except 1 through 5 and 10 through 15
exclude_some <- batrips[-c(1:5, 10:15)]
exclude_some

# Select all rows except the first and last
not_first_last <- batrips[-c(1, .N)] # Or batrips[-c(1, nrow(batrips))]
not_first_last