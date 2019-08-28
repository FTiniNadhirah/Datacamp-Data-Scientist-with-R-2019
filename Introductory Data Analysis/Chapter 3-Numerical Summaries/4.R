# Transformations
# Highly skewed distributions can make it very difficult to learn anything from a visualization. Transformations can be helpful in revealing the more subtle structure.
# 
# Here you'll focus on the population variable, which exhibits strong right skew, and transform it with the natural logarithm function (log() in R).
# 
# Instructions
# 100 XP
# Using the gap2007 data:
# 
# Create a density plot of the population variable.
# Mutate a new column called log_pop that is the natural log of the population and save it back into gap2007.
# Create a density plot of your transformed variable.

# Create density plot of old variable
gap2007 %>%
  ggplot(aes(x = pop)) +
  geom_density()

# Transform the skewed pop variable
gap2007 <- gap2007 %>%
  mutate(log_pop = log(pop))

# Create density plot of new variable
gap2007 %>%
  ggplot(aes(x = log_pop)) +
  geom_density()