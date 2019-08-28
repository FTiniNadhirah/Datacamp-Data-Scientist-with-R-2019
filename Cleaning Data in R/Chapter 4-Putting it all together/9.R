# Find missing values
# Before dealing with missing values in the data, it's important to find them and figure out why they exist in the first place. If your dataset is too big to look at all at once, like it is here, remember you can use sum() and is.na() to quickly size up the situation by counting the number of NA values.
# 
# The summary() function may also come in handy for identifying which variables contain the missing values. Finally, the which() function is useful for locating the missing values within a particular column.
# 
# Instructions
# 100 XP
# Use sum() and is.na() to count the number of NA values in weather6.
# Look at a summary() of weather6 to figure out how the missings are distributed among the different variables.
# Use which() to identify the indices (i.e. row numbers) where Max.Gust.SpeedMPH is NA and save the result to ind (for indices).
# Use ind to look at the full rows of weather6 for which Max.Gust.SpeedMPH is missing.


# Count missing values

sum(is.na(weather6))
# Find missing values
summary(weather6)

# Find indices of NAs in Max.Gust.SpeedMPH
ind <- which(is.na(weather6$Max.Gust.SpeedMPH))

# Look at the full rows for records missing Max.Gust.SpeedMPH
weather6[ind, ]