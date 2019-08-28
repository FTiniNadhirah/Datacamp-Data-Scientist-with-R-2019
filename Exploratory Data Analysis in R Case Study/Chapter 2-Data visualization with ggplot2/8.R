# Choose your own countries
# The purpose of an exploratory data analysis is to ask questions and answer them with data. Now it's your turn to ask the questions.
# 
# You'll choose some countries whose history you are interested in and add them to the graph. If you want to look up the full list of countries, enter by_country$country in the console.
# 
# Instructions
# 100 XP
# Add three more countries to the countries vector and therefore to the faceted graph.

# Add three more countries to this list
countries <- c("United States", "United Kingdom",
               "France", "Germany", "China", "India", "Argentina", "Canada","Uruguay")

# Filtered by_year_country: filtered_countries
filtered_countries <- by_year_country %>%
  filter(country %in% countries)

# Line plot of % yes over time faceted by country
ggplot(filtered_countries, aes(year, percent_yes)) +
  geom_line() +
  facet_wrap(~ country, scales = "free_y")