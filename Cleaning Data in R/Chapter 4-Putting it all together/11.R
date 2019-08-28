# Another obvious error
# You've discovered and repaired one obvious error in the data, but it appears that there's another. Sometimes you get lucky and can infer the correct or intended value from the other data. For example, if you know the minimum and maximum values of a particular metric on a given day...
# 
# Instructions
# 100 XP
# Use summary() to look at the value of only the Mean.VisibilityMiles variable of weather6.
# Determine the element of the value that is clearly erroneous in this column, saving the result to ind.
# Use ind to look at the full row of weather6 for this day.
# Inspect the values of other variables for this day to determine the correct value of Mean.VisibilityMiles, then make the appropriate fix.

# Look at summary of Mean.VisibilityMiles
summary(weather6$Mean.VisibilityMiles)

# Get index of row with -1 value
ind <- which(weather6$Mean.VisibilityMiles == -1)

# Look at full row
weather6[ind,]

# Set Mean.VisibilityMiles to the appropriate value
weather6$Mean.VisibilityMiles[ind] <- 10