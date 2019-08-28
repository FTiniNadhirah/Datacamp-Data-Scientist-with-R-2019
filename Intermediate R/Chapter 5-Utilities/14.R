# Time is of the essence
# The dates when a season begins and ends can vary depending on who you ask. People in Australia will tell you that spring starts on September 1st. The Irish people in the Northern hemisphere will swear that spring starts on February 1st, with the celebration of St. Brigid's Day. Then there's also the difference between astronomical and meteorological seasons: while astronomers are used to equinoxes and solstices, meteorologists divide the year into 4 fixed seasons that are each three months long. (source: www.timeanddate.com)
# 
# A vector astro, which contains character strings representing the dates on which the 4 astronomical seasons start, has been defined on your workspace. Similarly, a vector meteo has already been created for you, with the meteorological beginnings of a season.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use as.Date() to convert the astro vector to a vector containing Date objects. You will need the %d, %b and %Y symbols to specify the format. Store the resulting vector as astro_dates.
# Use as.Date() to convert the meteo vector to a vector with Date objects. This time, you will need the %B, %d and %y symbols for the format argument. Store the resulting vector as meteo_dates.
# With a combination of max(), abs() and -, calculate the maximum absolute difference between the astronomical and the meteorological beginnings of a season, i.e. astro_dates and meteo_dates. Simply print this maximum difference to the console output.

# Convert astro to vector of Date objects: astro_dates
astro_dates <- as.Date(astro, format = "%d-%b-%Y")

# Convert meteo to vector of Date objects: meteo_dates
meteo_dates <- as.Date(meteo, format = "%B %d, %y")

# Calculate the maximum absolute difference between astro_dates and meteo_dates
max(abs(astro_dates - meteo_dates))
## Time difference of 24 days