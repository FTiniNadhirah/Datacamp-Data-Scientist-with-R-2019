# Combining i, j, and by (II)
# As you did in the last chapter, you will combine the i, j, and by arguments, but this time modify the existing data.table by reference in j.
# 
# Instructions
# 70 XP
# For all rows where duration is greater than 600, group batrips by start_station and end_station to add a new column (mean_duration) by reference which calculates the mean duration of all trips.

# Add the mean_duration column
batrips[duration > 600, mean_duration := mean(duration), 
        by = .(start_station, end_station)]