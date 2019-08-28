# Choose measures for center and spread
# Consider the density plots shown here. What are the most appropriate measures to describe their centers and spreads? In this exercise, you'll select the measures and then calculate them.
# 
# Instructions
# 100 XP
# Using the shapes of the density plots, calculate the most appropriate measures of center and spread for the following:
# 
# The distribution of life expectancy in the countries of the Americas. Note you'll need to apply a filter here.
# The distribution of country populations across the entire gap2007 dataset.

# Compute stats for lifeExp in Americas
gap2007 %>%
  filter(continent == "Americas") %>%
  summarize(mean(lifeExp),
            sd(lifeExp))

# Compute stats for population
gap2007 %>%
  summarize(median(pop),
            IQR(pop))