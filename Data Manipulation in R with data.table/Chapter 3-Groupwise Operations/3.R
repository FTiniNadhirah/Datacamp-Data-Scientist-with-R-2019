# Computing multiple stats
# Let's now combine everything from the past two exercises to find multiple summary statistic with multiple groups in batrips.
# 
# Instructions 1/2
# 35 XP
# Instructions 1/2
# 35 XP
# 1
# Group by start_station and end_station to calculate the mean duration and the total number of trips. Name these columns mean_duration and total_trips, respectively.
# 
# Show Answer (-35 XP)
# Hint
# Provide the aggregations that need to be computed in the j argument, and use .N to find the total number of rows in each group.
# 
# 
# Did you find this hint helpful?
# 
# YesNo
# 2
# Group by start_station, end_station, and for each month in start_date to calculate the minimum and maximum duration. Name these columns min_duration and max_duration, respectively.

# Compute mean of duration and total trips grouped by start and end stations
aggregate_mean_trips <- batrips[, .(mean_duration = mean(duration), 
                                    total_trips = .N), 
                                by = .(start_station, end_station)]
aggregate_mean_trips

# Compute min and max duration grouped by start station, end station, and month
aggregate_min_max <- batrips[, .(max_duration = max(duration), min_duration = min(duration)), by = .(start_station, end_station, month(start_date))]
aggregate_min_max