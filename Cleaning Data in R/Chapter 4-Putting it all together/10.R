# An obvious error
# Besides missing values, we want to know if there are values in the data that are too extreme or bizarre to be plausible. A great way to start the search for these values is with summary().
# 
# Once implausible values are identified, they must be dealt with in an intelligent and informed way. Sometimes the best way forward is obvious and other times it may require some research and/or discussions with the original collectors of the data.
# 
# Instructions
# 100 XP
# View a summary() of weather6.
# Use which() to find the index of the erroneous element of weather6$Max.Humidity, saving the result to ind.
# Use ind to look at the full row of weather6 for that day.
# You discover an extra zero was accidentally added to this value. Correct it in the data.

# Review distributions for all variables

summary(weather6)
# Find row with Max.Humidity of 1000
ind <- which(weather6$Max.Humidity == 1000)

# Look at the data for that day
weather6[ind, ]
# Change 1000 to 100
weather6$Max.Humidity[ind] <- 100 