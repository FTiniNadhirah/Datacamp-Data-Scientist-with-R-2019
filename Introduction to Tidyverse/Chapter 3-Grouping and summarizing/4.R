# Visualizing median life expectancy over time
# In the last chapter, you summarized the gapminder data to calculate the median life expectancy within each year. This code is provided for you, and is saved (with <-) as the by_year dataset.
# 
# Now you can use the ggplot2 package to turn this into a visualization of changing life expectancy over time.
# 
# Instructions
# 100 XP
# Use the by_year dataset to create a scatter plot showing the change of median life expectancy over time, with year on the x-axis and medianLifeExp on the y-axis. Be sure to add expand_limits(y = 0) to make sure the plot's y-axis includes zero.

library(gapminder)
library(dplyr)
library(ggplot2)

by_year <- gapminder %>%
  group_by(year) %>%
  summarize(medianLifeExp = median(lifeExp),
            maxGdpPercap = max(gdpPercap))

# Create a scatter plot showing the change in medianLifeExp over time
ggplot(by_year, aes(x = year, y = medianLifeExp), geom_point(), expand_limits(y = 0))