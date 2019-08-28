# Calculate spread measures
# Let's extend the powerful group_by() and summarize() syntax to measures of spread. If you're unsure whether you're working with symmetric or skewed distributions, it's a good idea to consider a robust measure like IQR in addition to the usual measures of variance or standard deviation.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The gap2007 dataset that you created in an earlier exercise is available in your workspace.
# 
# For each continent in gap2007, summarize life expectancies using the sd(), the IQR(), and the count of countries, n(). No need to name the new columns produced here. The n() function within your summarize() call does not take any arguments.
# Graphically compare the spread of these distributions by constructing overlaid density plots of life expectancy broken down by continent.

# Compute groupwise measures of spread
gap2007 %>%
  group_by(continent) %>%
  summarize(sd(lifeExp),
            IQR(lifeExp),
            n())

# Generate overlaid density plots
gap2007 %>%
  ggplot(aes(x = lifeExp, fill = continent)) +
  geom_density(alpha = 0.3)