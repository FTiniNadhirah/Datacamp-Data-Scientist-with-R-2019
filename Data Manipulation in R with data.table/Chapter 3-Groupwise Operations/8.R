# Using .SD (I)
# .SD together with .SDcols is an incredibly powerful feature that makes computing on multiple columns so much easier.
# 
# .SD is a special symbol which stands for Subset of Data
# .SDcols holds the columns that should be included in .SD
# Instructions
# 100 XP
# For each month, find the row corresponding to the shortest trip (by using which.min() on duration).
# The result should contain the month, start_station, end_station, start_date, end_date, and duration columns.

relevant_cols <- c("start_station", "end_station", 
                   "start_date", "end_date", "duration")

# Find the row corresponding to the shortest trip per month
shortest <- batrips[, .SD[which.min(duration)], 
                    by = month(start_date), 
                    .SDcols = relevant_cols]
shortest