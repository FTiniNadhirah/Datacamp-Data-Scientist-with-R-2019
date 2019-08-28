# Check other extreme values
# In addition to dealing with obvious errors in the data, we want to see if there are other extreme values. In addition to the trusty summary() function, hist() is useful for quickly getting a feel for how different variables are distributed.
# 
# Instructions
# 100 XP
# Check a summary() of weather6 one more time for extreme or unexpected values.
# View a histogram for MeanDew.PointF.
# Do the same for Min.TemperatureF.
# And once more for Mean.TemperatureF to compare distributions.

# Review summary of full data once more

summary(weather6)
# Look at histogram for MeanDew.PointF
hist(weather6$MeanDew.PointF)

# Look at histogram for Min.TemperatureF
hist(weather6$Min.TemperatureF)

# Compare to histogram for Mean.TemperatureF
hist(weather6$Mean.TemperatureF)