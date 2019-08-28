# Combining i, j, and by (I)
# In this exercise, you will combine the i, j, and by arguments to find the first and last ride for each start station. Recall that data.table first filters the rows in i, and then groups the rows using by, and finally compute the expression in j.
# 
# Instructions
# 100 XP
# Arrange batrips using the start_date column in ascending order.
# Group the rows by start_station.
# Extract the first and last rows of start_date.

# Find the first and last ride for each start_station
first_last <- batrips[order(start_date), 
                      .(start_date = start_date[c(1, .N)]), 
                      by = start_station]
first_last