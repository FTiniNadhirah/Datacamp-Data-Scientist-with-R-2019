# Filtering model terms
# You currently have both the intercept and slope terms for each by-country model. You're probably more interested in how each is changing over time, so you want to focus on the slope terms.
# 
# Instructions
# 100 XP
# Print the country_coefficients data frame to the console.
# Perform a filter() step that extracts only the slope (not intercept) terms.


# Print the country_coefficients dataset
country_coefficients

# Filter for only the slope terms
country_coefficients %>%
  filter(term == 'year')