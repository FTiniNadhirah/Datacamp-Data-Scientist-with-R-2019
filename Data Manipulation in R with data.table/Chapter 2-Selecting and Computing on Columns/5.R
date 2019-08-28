# Computing in j (III)
# In the previous exercise, you were able to pass expressions in j that returned a vector. Recall that if you want to return a data.table instead, wrap the expression with list() (or it's alias, .()). This lets you:
# 
# Rename the column result
# Compute more than one expression on a column
# Compute on more than one column
# Instructions 1/3
# 50 XP
# Instructions 1/3
# 50 XP
# 1
# Calculate the average duration as a one-column data.table with the column name mean_durn.
# 
# Take Hint (-15 XP)
# 2
# Calculate the minimum and maximum duration (don't rename the columns).
# 
# 3
# Find the average duration and the date of the last ride (using the end_date column). Name these columns mean_duration and last_ride, respectively.

# Have the column mean_durn
mean_duration <- batrips[, list(mean_durn = mean(duration))]
mean_duration

# Get the min and max duration values
min_max_duration <- batrips[, .(min(duration), max(duration))]
min_max_duration

# Calculate the number of unique values
other_stats <- batrips[, .(mean_duration = mean(duration), 
                           last_ride = max(end_date))]
other_stats