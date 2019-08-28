# Linear regression on the United States
# A linear regression is a model that lets us examine how one variable changes with respect to another by fitting a best fit line. It is done with the lm() function in R.
# 
# Here, you'll fit a linear regression to just the percentage of "yes" votes from the United States.
# 
# Instructions
# 100 XP
# Print the US_by_year data to the console.
# Using just the US data in US_by_year, use lm() to run a linear regression predicting percent_yes from year. Save this to a variable US_fit.
# Summarize US_fit using the summary() function.

# Percentage of yes votes from the US by year: US_by_year
US_by_year <- by_year_country %>%
  filter(country == "United States")

# Print the US_by_year data
US_by_year

# Perform a linear regression of percent_yes by year: US_fit
US_fit <- lm(percent_yes ~ year, data = US_by_year)

# Perform summary() on the US_fit object
summary(US_fit)
