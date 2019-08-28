# Updating columns by group
# You often need to create new intermediate columns to get to the final result but don't necessarily need these intermediate columns in the final result. This is a very common pattern in data analysis.
# 
# In this exercise, you will work with a new data.table, batrips_new, which is almost identical to batrips, except we randomly introduced some missing values in the duration column.
# 
# Instructions 1/3
# 1 XP
# 1
# 2
# 3
# Add a new column (mean_dur) by reference that is the mean duration of all trips grouped by month (based on start_date). Note that the duration column has missing values.
# 
# Calculate the mean duration for each month
batrips_new[, mean_dur := mean(duration, na.rm = TRUE), 
            by = month(start_date)]

# Chain a new data.table expression that replaces all missing values in duration with the corresponding mean_dur value.

# Replace NA values in duration with the mean value of duration for that month
batrips_new[, mean_dur := mean(duration, na.rm = TRUE), 
            by = month(start_date)][is.na(duration), 
                                    duration := mean_dur]

# Delete the mean_dur column by reference.

# Delete the mean_dur column by reference
batrips_new[, mean_dur := mean(duration, na.rm = TRUE), 
            by = month(start_date)][is.na(duration), 
                                    duration := mean_dur][, mean_dur := NULL]
