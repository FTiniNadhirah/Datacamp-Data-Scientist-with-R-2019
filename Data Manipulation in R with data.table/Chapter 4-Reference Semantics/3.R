# Updating an existing column (II)
# In the previous exercise, you updated only one value and you knew the exact location that had to be updated, i.e., the second row of the start_station column. However, in your day-to-day work, you often want to update several values and you won't know the locations in advance.
# 
# You can use the filtering expressions in i the same way you did in chapter 1 to update the columns by reference.
# 
# In this exercise, you will work with a new data.table, untidy, which is almost identical to batrips, except we randomly introduced some negative values in the duration column.
# 
# Instructions
# 100 XP
# Replace all rows where duration is less than 0 with NAs.
# Replace negative duration values with NA
untidy[duration < 0, duration := NA]
