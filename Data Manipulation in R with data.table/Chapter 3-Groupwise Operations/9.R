# Using .SD (II)
# You can also apply a single function to every column specified in .SDcols using lapply(). In this exercise, you will calculate the number of unique start stations and zip codes for each month using uniqueN(). uniqueN() returns the number of unique elements in a column/vector/data.table.
# 
# Instructions
# 100 XP
# Find the total number of unique start stations and zip codes for each month, using start_date to extract the month.

# Find the total number of unique start stations and zip codes per month
unique_station_month <- batrips[, lapply(.SD, uniqueN), 
                                by = month(start_date), 
                                .SDcols = c("start_station", "zip_code")]
unique_station_month