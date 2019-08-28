# Finishing touches
# Before officially calling our weather data clean, we want to put a couple of finishing touches on the data. These are a bit more subjective and may not be necessary for analysis, but they will make the data easier for others to interpret, which is generally a good thing.
# 
# There are a number of stylistic conventions in the R language. Depending on who you ask, these conventions may vary. Because the period (.) has special meaning in certain situations, we generally recommend using underscores (_) to separate words in variable names. We also prefer all lowercase letters so that no one has to remember which letters are uppercase or lowercase.
# 
# Finally, the events column (renamed to be all lowercase in the first instruction) contains an empty string ("") for any day on which there was no significant weather event such as rain, fog, a thunderstorm, etc. However, if it's the first time you're seeing these data, it may not be obvious that this is the case, so it's best for us to be explicit and replace the empty strings with something more meaningful.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# We've created a vector of column names in your workspace called new_colnames, all of which obey the conventions described above. Clean up the column names of weather6 by assigning new_colnames to names(weather6).
# Replace all empty strings in the events column of weather6 with "None".
# One last time, print out the first 6 rows of the weather6 data frame to see the changes.

# Clean up column names
names(weather6) <- new_colnames

# Replace empty cells in events column
weather6$events[weather6$events == ""] <- "None" 

# Print the first 6 rows of weather6
head(weather6)