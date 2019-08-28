# Plotting just the UK over time
# Now that you have the percentage of time that each country voted "yes" within each year, you can plot the trend for a particular country. In this case, you'll look at the trend for just the United Kingdom.
# 
# This will involve using filter() on your data before giving it to ggplot2.
# 
# Instructions
# 100 XP
# Print the by_year_country dataset.
# Create a filtered version of the dataset called UK_by_year.
# Create a line plot of the percentage of "yes" votes over time for the United Kingdom.

# Start with by_year_country dataset
by_year_country <- votes_processed %>%
  group_by(year, country) %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))

# Print by_year_country
by_year_country


# Create a filtered version: UK_by_year
UK_by_year <- by_year_country %>%
  filter(country == 'United Kingdom')

# Line plot of percent_yes over time for UK only
ggplot(UK_by_year, aes(x = year, y = percent_yes)) +
  geom_line()