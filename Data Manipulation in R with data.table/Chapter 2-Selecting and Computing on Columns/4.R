# Computing in j (II)
# In the last exercise, you performed computations in j which returned only a single value, a vector of length one. However, you often perform computations which return more than one value. The good news is that the syntax for these calculations is still the same!
#   
#   You will use the difftime() function in this exercise to calculate the difference in minutes between the trips. difftime() needs two required arguments, time1 and time2 to calculate the difference (time1 - time2). To calculate the difference in minutes, set the units argument to "min":
#   
#   date1 <- "2018-12-20 11:30:00 EST"
# date2 <- "2018-12-20 11:20:00 EST"
# difftime(date1, date2, units = "min")
# 
# Time difference of 10 mins
# Instructions
# 100 XP
# Instructions
# 100 XP
# Calculate the difference in minutes between end_date and start_date.

# Compute duration of all trips
trip_duration <- batrips[, difftime(end_date, start_date)]
head(trip_duration)