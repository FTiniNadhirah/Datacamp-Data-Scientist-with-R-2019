# Computing stats by groups (II)
# When grouping a data.table by multiple columns, you need to specify the by argument as either a character vector or a list. In this exercise, you will calculate the mean of duration for:
#   
#   Each unique combination of start_station and end_station
# Each start_station for each month
# Instructions 1/2
# 0 XP
# Instructions 1/2
# 0 XP
# 1
# Compute the mean duration for each unique combination start_station and end_station. Call the aggregated column mean_duration.
# 


# Compute the mean duration for every start and end station
mean_station <- batrips[, .(mean_duration = mean(duration)), by = .(start_station, end_station)]
mean_station

# Compute the mean duration for each start_station and for each month in start_date. Call the aggregated column mean_duration
# Compute the mean duration grouped by start_station and month
mean_start_station <- batrips[, .(mean_duration = mean(duration)), by = .(start_station, month(start_date))]
mean_start_station