# Adding a new column
# As mentioned in the video, data.table does not have to deep copy objects in order to modify them. It can modify objects by reference (inplace) to save memory and runtime using the := operator. When you update a data.table by reference, you don't have to assign the result to a new object as the original data.table is modified directly.
# 
# Instructions
# 0 XP
# Add a new column duration_hour by reference, by dividing the duration column by 3600.

# Add a new column, duration_hour
batrips[, duration_hour := duration / 3600]