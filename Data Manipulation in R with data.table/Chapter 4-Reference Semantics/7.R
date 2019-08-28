# Adding multiple columns (II)
# In this exercise, you will add the same columns as in the previous exercise, using the functional form. In the functional form, you use the colon equal to operator (:=) as a function. Recall that when using operators as functions, they should be wrapped inside backticks, `:=`(). Inside the function call, you pass comma-separated col_name = expression values.
# 
# Instructions
# 100 XP
# Add two new columns (mean_duration and median_duration) by reference using the functional form that calculates the mean and median of the duration column for every start_station.
# 
# Add columns using the functional form
batrips[, `:=`(mean_duration = mean(duration), 
               median_duration = median(duration)), 
        by = start_station]