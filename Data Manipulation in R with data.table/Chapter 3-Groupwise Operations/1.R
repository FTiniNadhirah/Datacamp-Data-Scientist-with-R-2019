# Computing stats by groups (I)
# So far you have worked with the two dimensions, rows and columns of a data.table. It's now time to consider the virtual third dimension by dividing rows into groups to calculate statistics.
# 
# Instructions
# 0 XP
# Compute the mean duration for every start_station, calling the aggregated column mean_duration.
# 

# Compute the mean duration for every start_station
mean_start_stn <- batrips[, .(mean_duration = mean(duration)), by = start_station]
mean_start_stn