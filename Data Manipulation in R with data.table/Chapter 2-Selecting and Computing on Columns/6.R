# Combining i and j
# As you saw in an earlier exercise when you combine i and j, data.table first filters the rows in i and then applies the computation in j. This applies when calculating multiple stats as well.
# 
# Additionally, you can also specify plot(), hist() or any other plotting functions in the j argument.
# 
# Instructions 1/2
# 50 XP
# 1
# Calculate the minimum and maximum duration for all trips where the start_station is "Townsend at 7th" and the duration is less than 500. Rename these columns to min_dur and max_dur, respectively.
# 
# Take Hint (-15 XP)
# 2
# Now for the same subset of data, plot a histogram of duration.
# 

duration_stats <- batrips[start_station == "Townsend at 7th" & duration < 500, 
                          .(min_dur = min(duration), 
                            max_dur = max(duration))]
duration_stats


# Plot the histogram of duration based on conditions
batrips[start_station == "Townsend at 7th" & duration < 500, hist(duration)]