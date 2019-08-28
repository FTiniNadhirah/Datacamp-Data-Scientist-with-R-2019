# Checking models visually
# In the last exercise, you found that over its history, Vanuatu (an island nation in the Pacific Ocean) sharply changed its pattern of voting on the topic of Palestinian conflict.
# 
# Let's examine this country's voting patterns more closely. Recall that the by_country_year_topic dataset contained one row for each combination of country, year, and topic. You can use that to create a plot of Vanuatu's voting, faceted by topic.
# 
# Instructions
# 100 XP
# Filter the by_country_year_topic variable for only Vanuatu's votes to create a vanuatu_by_country_year_topic object.
# Create a plot with year on the x-axis and percent_yes on the y-axis, and facet by topic.

# Create vanuatu_by_country_year_topic
vanuatu_by_country_year_topic <- by_country_year_topic %>%
  filter(country == "Vanuatu")

# Plot of percentage "yes" over time, faceted by topic
ggplot(vanuatu_by_country_year_topic, aes(x = year, y = percent_yes)) +
  geom_line() + 
  facet_wrap(~ topic)