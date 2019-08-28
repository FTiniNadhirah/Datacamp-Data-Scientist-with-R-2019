# Column names are values
# The weather dataset suffers from one of the five most common symptoms of messy data: column names are values. In particular, the column names X1-X31 represent days of the month, which should really be values of a new variable called day.
# 
# The tidyr package provides the gather() function for exactly this scenario. To remind you of how it works, we've loaded a small dataset called df in your workspace. Give the following a try in the console before attempting the instructions below.
# 
# gather(df, time, val, t1:t3)
# Notice that gather() allows you to select multiple columns to be gathered by using the : operator.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the tidyr package.
# Call gather() on the weather data to gather columns X1-X31. The two columns created as a result should be called day and value. Save the result as weather2.
# View the result with head().

# Load the tidyr package
library(tidyr)

# Gather the columns
weather2 <- gather(weather, day, value, c(X1:X31), na.rm = TRUE)

# View the head
head(weather2)