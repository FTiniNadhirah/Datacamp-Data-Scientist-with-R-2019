# Selecting columns by name
# DT[, c("col1", "col2")] returns a data.table with two columns, just like a data.frame.
# 
# Alternatively, you can also select columns by passing a list with each element referring to the column name as if it were a variable, i.e., DT[, .(col1, col2)]. Note the absence of quotes, i.e., "" around column names here.
# 
# Instructions 1/2
# 0 XP
# Instructions 1/2
# 0 XP
# 1
# Use a character vector to select the bike_id and trip_id columns (in that order) from batrips.
#   
# 2
# Without using a character vector, select the start_station and end_station columns (in that order) from batrips.

# Select bike_id and trip_id using a character vector
df_way <- batrips[, c("bike_id", "trip_id")]
df_way

# Select bike_id and trip_id using a character vector
df_way <- batrips[, c(start_station, end_station)]
df_way