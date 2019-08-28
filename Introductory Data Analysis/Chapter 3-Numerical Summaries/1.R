# Calculate center measures
# Throughout this chapter, you will use data from gapminder, which tracks demographic data in countries of the world over time. To learn more about it, you can bring up the help file with ?gapminder.
# 
# For this exercise, focus on how the life expectancy differs from continent to continent. This requires that you conduct your analysis not at the country level, but aggregated up to the continent level. This is made possible by the one-two punch of group_by() and summarize(), a very powerful syntax for carrying out the same analysis on different subsets of the full dataset.
# 
# Instructions
# 100 XP
# Create a dataset called gap2007 that contains only data from the year 2007.
# Using gap2007, calculate the mean and median life expectancy for each continent. Don't worry about naming the new columns produced by summarize().
# Confirm the trends that you see in the medians by generating side-by-side box plots of life expectancy for each continent.

# Create dataset of 2007 data
gap2007 <- filter(gapminder, year == 2007)

# Compute groupwise mean and median lifeExp
gap2007 %>%
  group_by(continent) %>%
  summarize(mean(lifeExp),
            median(lifeExp))


# Generate box plots of lifeExp for each continent
gap2007 %>%
  ggplot(aes(x = continent, y = lifeExp)) +
  geom_boxplot()