# Computing in j (I)
# Since columns can be treated as variables inside data.table's square brackets ([ ]), you can compute on the columns directly in j.
# 
# Instructions 1/2
# 0 XP
# Instructions 1/2
# 0 XP
# 1
# Using the j argument, find the median duration (the result should be a vector of length 1).
# 
# 2
# Now, find the median duration where end_station is "Market at 10th" for all subscribers.
# 

# Calculate median duration using the j argument
median_duration <- batrips[, median(duration)]
median_duration

# Get median duration after filtering
median_duration_filter <- batrips[end_station == "Market at 10th" & subscription_type == "Subscriber", median(duration)]
median_duration_filter