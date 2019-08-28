# Column type conversions
# As you saw in the last exercise, "T" was used to denote a trace amount (i.e. too small to be accurately measured) of precipitation in the PrecipitationIn column. In order to coerce this column to numeric, you'll need to deal with this somehow. To keep things simple, we will just replace "T" with zero, as a string ("0").
# 
# The dplyr and stringr packages are already loaded
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use str_replace() from stringr to make the proper replacements in the PrecipitationIn column of weather5.
# Run the call to mutate_at as-is to conveniently apply as.numeric() to all columns from CloudCover through WindDirDegrees (reading left to right in the data), saving the result to weather6.
# View the structure of weather6 to confirm the coercions were successful.

# Replace "T" with "0" (T = trace)
weather5$PrecipitationIn <- str_replace(weather5$PrecipitationIn, "T", "0")

# Convert characters to numerics
weather6 <- mutate_each(weather5, funs(as.numeric), CloudCover:WindDirDegrees)

# Look at result
str(weather6)