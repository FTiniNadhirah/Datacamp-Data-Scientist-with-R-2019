# Adding multiple columns (I)
# More often than not, you may want to add/update multiple columns by reference. There are two ways to do this in data.table:
#   
#   LHS := RHS form
# Functional form
# In this exercise, you will add columns using the LHS := RHS form. In the LHS, you specify column names as a character vector and in the RHS, you specify values/expressions to be added inside list() (or the alias, .()).
# 
# Instructions
# 100 XP
# Add two new columns (mean_duration and median_duration) by reference using the LHS := RHS form that calculates the mean and median of the duration column for every start_station.
# 
# Add columns using the LHS := RHS form
batrips[, c("mean_duration", 
            "median_duration") := .(mean(duration), median(duration)), 
        by = start_station]