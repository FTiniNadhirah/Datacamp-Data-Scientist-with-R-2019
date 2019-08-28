# Adding a country column
# The country codes in the ccode column are what's called Correlates of War codes. This isn't ideal for an analysis, since you'd like to work with recognizable country names.
# 
# You can use the countrycode package to translate. For example:
# 
# library(countrycode)
# 
# # Translate the country code 2
# > countrycode(2, "cown", "country.name")
# [1] "United States"
# 
# # Translate multiple country codes
# > countrycode(c(2, 20, 40), "cown", "country.name")
# [1] "United States" "Canada"        "Cuba"
# Instructions
# 100 XP
# Instructions
# 100 XP
# Load the countrycode package.
# Convert the country code 100 to its country name.
# Add a new country column in your mutate() statement containing country names, using the countrycode() function to translate from the ccode column. Save the result to votes_processed.

# Load the countrycode package
library(countrycode)

# Convert country code 100
countrycode(100, "cown", "country.name")

# Add a country column within the mutate: votes_processed
votes_processed <- votes %>%
  filter(vote <= 3) %>%
  mutate(
    year = session + 1945,
    country = countrycode(ccode, "cown", "country.name"),
    country = recode(country, 
                     'United States of America' =  'United States',
                     'United Kingdom of Great Britain and Northern Ireland' = 'United Kingdom')
  )