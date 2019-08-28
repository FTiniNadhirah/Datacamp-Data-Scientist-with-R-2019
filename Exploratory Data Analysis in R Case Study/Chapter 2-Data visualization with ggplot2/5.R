# Plotting multiple countries
# Plotting just one country at a time is interesting, but you really want to compare trends between countries. For example, suppose you want to compare voting trends for the United States, the UK, France, and India.
# 
# You'll have to filter to include all four of these countries and use another aesthetic (not just x- and y-axes) to distinguish the countries on the resulting visualization. Instead, you'll use the color aesthetic to represent different countries.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The by_year_country dataset you created in the last exercise is available in your workspace.
# 
# Create a filtered version of by_year_country called filtered_4_countries with just the countries listed in the editor (you may find the %in% operator useful here).
# Show the trend for each of these countries on the same graph, using color to distinguish each country.

# Vector of four countries to examine
countries <- c("United States", "United Kingdom",
               "France", "India")

# Filter by_year_country: filtered_4_countries
filtered_4_countries <- by_year_country %>%
  filter(country %in% countries)

# Line plot of % yes in four countries
ggplot(filtered_4_countries, aes(x = year, y = percent_yes, color = country)) +
  geom_line()