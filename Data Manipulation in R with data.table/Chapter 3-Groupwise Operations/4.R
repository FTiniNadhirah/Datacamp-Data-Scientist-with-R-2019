# Ordering rows
# Ordering aggregated data is quite a common operation. This can be elegantly accomplished by simply chaining data.table expressions together.
# 
# Instructions 1/2
# 35 XP
# 1
# 2
# Compute the total number of trips grouped by start_station and end_station.

# Compute the total trips grouped by start_station and end_station
trips_dec <- batrips[, .N, by = .(start_station, 
                                  end_station)]
trips_dec

# After computing the total number of trips grouped by start_station and end_station, order the results (total number of trips) in descending order.

# Arrange the total trips grouped by start_station and end_station in decreasing order
trips_dec <- batrips[, .N, by = .(start_station, 
                                  end_station)][order(-N)]
trips_dec