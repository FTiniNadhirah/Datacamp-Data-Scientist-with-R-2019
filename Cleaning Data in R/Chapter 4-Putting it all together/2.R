# Summarize the data
# Next up is to look at some summaries of the data. This is where functions like str(), glimpse() from dplyr, and summary() come in handy.
# 
# Instructions
# 100 XP
# View the structure of weather using base R.
# Load the dplyr package.
# View the structure of weather, the dplyr way.
# View a summary() of weather.

# View the structure of the data
str(weather)

# Load dplyr package
library(dplyr)

# Look at the structure using dplyr's glimpse()

glimpse(weather)
# View a summary of the data
summary(weather)