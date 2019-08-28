# Identify outliers
# Consider the distribution, shown here, of the life expectancies of the countries in Asia. The box plot identifies one clear outlier: a country with a notably low life expectancy. Do you have a guess as to which country this might be? Test your guess in the console using either min() or filter(), then proceed to building a plot with that country removed.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# gap2007 is still available in your workspace.
# 
# Apply a filter so that it only contains observations from Asia, then create a new variable called is_outlier that is TRUE for countries with life expectancy less than 50. Assign the result to gap_asia.
# Filter gap_asia to remove all outliers, then create another box plot of the remaining life expectancies.

# Filter for Asia, add column indicating outliers
gap_asia <- gap2007 %>%
  filter(continent == "Asia") %>%
  mutate(is_outlier = lifeExp < 50)

# Remove outliers, create box plot of lifeExp
gap_asia %>%
  filter(!is_outlier) %>%
  ggplot(aes(x = 1, y = lifeExp)) +
  geom_boxplot()