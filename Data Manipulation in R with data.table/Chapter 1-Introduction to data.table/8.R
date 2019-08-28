# Exercise
# Exercise
# Filtering with %between% and %chin%
#   Two other functions that can come in handy when filtering rows are %between% and %chin%.
# 
# %between% works only on numeric columns and can be used to filter values in the closed interval [val1, val2].
# %chin% works only on character columns and is an efficient version of %in%. You can use it to look for specific strings in a vector.
# Instructions 1/2
# 50 XP
# 1
# Use %between% to filter all rows where duration is between [5000, 6000].
# 
# Take Hint (-15 XP)
# 2
# Use %chin% to filter all rows where start_station is either "San Francisco City Hall" or "Embarcadero at Sansome".

# Filter all rows where duration is between [5000, 6000]
duration_5k_6k <- batrips[duration %between% c(5000,6000)]
duration_5k_6k

# Filter all rows with specific start stations
two_stations <- batrips[start_station %chin% c("San Francisco City Hall", "Embarcadero at Sansome")]
two_stations