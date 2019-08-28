# Faceting by country
# Now you'll take a look at six countries. While in the previous exercise you used color to represent distinct countries, this gets a little too crowded with six.
# 
# Instead, you will facet, giving each country its own sub-plot. To do so, you add a facet_wrap() step after all of your layers.
# 
# Instructions
# 100 XP
# Create a filtered version that contains these six countries called filtered_6_countries.
# Use the filtered dataset (containing summarized data for six countries) to create a plot with one facet for each country.

# Vector of six countries to examine
countries <- c("United States", "United Kingdom",
               "France", "Japan", "Brazil", "India")

# Filtered by_year_country: filtered_6_countries
filtered_6_countries <- by_year_country %>%
  filter(country %in% countries)

# Line plot of % yes over time faceted by country
ggplot(filtered_6_countries, aes(x = year, y = percent_yes)) +
  geom_line() + 
  facet_wrap(~ country)