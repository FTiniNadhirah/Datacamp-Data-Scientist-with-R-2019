# Filtering rows using positive integers
# You can filter the required rows from a data.table by providing the row indices to its first argument (i), just like when working with a data.frame. However, unlike a data.frame, you don't need to add a comma (,) when filtering rows.
# 
# Instructions 3/3
# 21 XP
# Filter the third row from batrips, storing the result in row_3.
# 
# Filter rows 10 through 20 (including both) from batrips, storing the result in rows_10_20.
# 
# Filter the 1st, 6th and 10th rows, in that order, from batrips. Store the result in rows_1_6_10.
# 

# Filter third row
row_3 <- batrips[3]
row_3

# Filter rows 10 through 20
rows_10_20 <- batrips[10:20]
rows_10_20

# Filter the 1st, 6th and 10th rows
rows_1_6_10 <- batrips[c(1,6,10)]
rows_1_6_10
