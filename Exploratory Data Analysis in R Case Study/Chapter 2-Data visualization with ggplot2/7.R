# Faceting with free y-axis
# In the previous plot, all six graphs had the same axis limits. This made the changes over time hard to examine for plots with relatively little change.
# 
# Instead, you may want to let the plot choose a different y-axis for each facet.
# 
# Instructions
# 100 XP
# Change the faceted plot so that the y-axis is freely chosen for each facet, rather than being the same for all six.

# Vector of six countries to examine
countries <- c("United States", "United Kingdom",
               "France", "Japan", "Brazil", "India")

# Filtered by_year_country: filtered_6_countries
filtered_6_countries <- by_year_country %>%
  filter(country %in% countries)

# Line plot of % yes over time faceted by country
ggplot(filtered_6_countries, aes(year, percent_yes)) +
  geom_line() +
  facet_wrap(~ country, scales = "free_y")