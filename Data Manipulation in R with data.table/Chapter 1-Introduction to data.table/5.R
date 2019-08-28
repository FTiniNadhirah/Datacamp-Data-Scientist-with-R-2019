# Filtering rows using logical vectors
# In this exercise, you'll use expressions that evaluate to a logical vector to filter rows in a data.table. All rows that evaluate to TRUE will be returned.
# 
# Note that you can refer to column names directly, without the need for the $ operator.
# 
# Instructions 1/4
# 25 XP
# Instructions 1/4
# 25 XP
# 1
# Filter all the rows where start_station is "MLK Library".
# 
# Take Hint (-7 XP)
# 2
# Filter all rows where start_station is "MLK Library" and duration is greater than 1600.
# 
# 3
# Filter all rows where the column subscription_type is not "Subscriber".
# 
# 4
# Filter all rows where start_station is "Ryland Park" and subscription_type is not "Customer".

# Filter all rows where start_station is "MLK Library"
trips_mlk <- batrips[start_station == "MLK Library"]
trips_mlk

# Filter all rows where start_station is "MLK Library" AND duration > 1600
trips_mlk_1600 <- batrips[start_station == "MLK Library" & duration > 1600]
trips_mlk_1600

# Filter all rows where `subscription_type` is not `"Subscriber"`
customers <-batrips[subscription_type != "Subscriber"] 
customers
# Filter all rows where start_station is "Ryland Park" AND subscription_type is not "Customer"
ryland_park_subscribers <- batrips[start_station == "Ryland Park" & subscription_type != "Customer"]
ryland_park_subscribers
