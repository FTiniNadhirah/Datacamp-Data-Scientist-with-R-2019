# Unnesting a data frame
# You now have a tidied version of each model stored in the tidied column. You want to combine all of those into a large data frame, similar to how you combined the US and UK tidied models earlier. Recall that the unnest() function from tidyr achieves this.
# 
# Instructions
# 100 XP
# Add an unnest() step to unnest the tidied models stored in the tidied column. Save the result as country_coefficients.
# Print the resulting country_coefficients object to the console.

# Add one more step that unnests the tidied column
country_coefficients <- by_year_country %>%
  group_by(country) %>%
  nest() %>%
  mutate(model = map(data, ~ lm(percent_yes ~ year, data = .)),
         tidied = map(model, tidy)) %>%
  unnest(tidied)

# Print the resulting country_coefficients variable
country_coefficients