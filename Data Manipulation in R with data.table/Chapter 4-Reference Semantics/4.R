# Adding columns by group
# Recall that you can perform computations by group using the by argument of the data.table. In this exercise, you will add new columns by group to the original data.table by reference.
# 
# Instructions 1/2
# 50 XP
# 1
# Add a new column by reference called trips_N that is equal to the total number of trips for every start_station.
# 
# Take Hint (-15 XP)
# 2
# Add a new column by reference called duration_mean that is equal to the mean duration of trips for each unique combination of start_station and end_station.

# Add a new column equal to total trips for every start station
batrips[, trips_N := .N, by = start_station]

# Add new column for every start_station and end_station
batrips[, duration_mean := mean(duration), by = .(start_station, end_station)]