# What is the most popular destination from each start station?
#   In the last exercise, you created trips_dec, which consists of the total number of trips grouped by start_station and end_station in descending order. This gives you an opportunity to calculate the most popular end station for each start station. You can do this by simply extracting the first end_station for each start_station.
# 
# trips_dec is available in your workspace.
# 
# Instructions
# 100 XP
# Group trips_dec by start_station and extract the first end_station to find the most popular end station for each start station.

# Compute most popular end station for every start station
popular_end_station <- trips_dec[, .(end_station = end_station[1]), 
                                 by = start_station]
popular_end_station