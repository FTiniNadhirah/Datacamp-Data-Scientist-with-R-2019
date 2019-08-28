# Some summary statistics
# Use dplyrs group_by() and summarize() to compute summary statistics for both years.
# 
# Instructions
# 100 XP
# Have a look at the structure of the ilo_data set with str().
# After this, group the data by year using the group_by() function.
# Then, calculate the mean of both variables hourly_compensation and working_hours using the summarize() function.


# Examine the structure of ilo_data
str(ilo_data)

# Group and summarize the data
ilo_data %>%
  group_by(year) %>%
  summarize(mean_hourly_compensation = mean(hourly_compensation),
            mean_working_hours = mean(working_hours))