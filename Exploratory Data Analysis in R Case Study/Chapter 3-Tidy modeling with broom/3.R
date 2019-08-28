# Combining models for multiple countries
# One important advantage of changing models to tidied data frames is that they can be combined.
# 
# In an earlier section, you fit a linear model to the percentage of "yes" votes for each year in the United States. Now you'll fit the same model for the United Kingdom and combine the results from both countries.
# 
# Instructions
# 100 XP
# Fit a model for the United Kingdom similar to the one you fit for the US and save it as UK_fit.
# Tidy US_fit into a data frame called US_tidied and the UK model into UK_tidied.
# Use bind_rows() from dplyr to combine the two tidied models, printing the result to the console.

# Linear regression of percent_yes by year for US
US_by_year <- by_year_country %>%
  filter(country == "United States")
US_fit <- lm(percent_yes ~ year, US_by_year)

# Fit model for the United Kingdom
UK_by_year <- by_year_country %>%
  filter(country == "United Kingdom")
UK_fit <- lm(percent_yes ~ year, UK_by_year)

# Create US_tidied and UK_tidied
US_tidied <- tidy(US_fit)
UK_tidied <- tidy(UK_fit)

# Combine the two tidied models
bind_rows(US_tidied, UK_tidied)