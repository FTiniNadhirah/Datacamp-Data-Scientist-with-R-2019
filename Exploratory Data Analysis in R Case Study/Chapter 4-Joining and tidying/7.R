# Visualizing trends in topics for one country
# You can now visualize the trends in percentage "yes" over time for all six topics side-by-side. Here, you'll visualize them just for the United States.
# 
# Instructions
# 100 XP
# Load the ggplot2 package.
# Filter the by_country_year_topic dataset for just the United States and save the result as US_by_country_year_topic.
# Use this dataset to graph the percentage "yes" over time for the United States, faceting by topic.

# Load the ggplot2 package
library(ggplot2)

# Filter by_country_year_topic for just the US
US_by_country_year_topic <- by_country_year_topic %>%
  filter(country == "United States")

# Plot % yes over time for the US, faceting by topic
ggplot(US_by_country_year_topic, aes(x = year, y = percent_yes)) + 
  geom_line() +
  facet_wrap(~ topic)