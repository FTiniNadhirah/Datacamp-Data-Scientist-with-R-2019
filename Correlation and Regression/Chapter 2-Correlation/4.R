# Spurious correlation in random data
# Statisticians must always be skeptical of potentially spurious correlations. Human beings are very good at seeing patterns in data, sometimes when the patterns themselves are actually just random noise. To illustrate how easy it can be to fall into this trap, we will look for patterns in truly random data.
# 
# The noise dataset contains 20 sets of x and y variables drawn at random from a standard normal distribution. Each set, denoted as z, has 50 observations of x, y pairs. Do you see any pairs of variables that might be meaningfully correlated? Are all of the correlation coefficients close to zero?
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Create a faceted scatterplot that shows the relationship between each of the 20 sets of pairs of random variables x and y. You will need the facet_wrap() function for this.
# Compute the actual correlation between each of the 20 sets of pairs of x and y.
# Identify the datasets that show non-trivial correlation of greater than 0.2 in absolute value.

# Create faceted scatterplot

ggplot(noise, aes(x, y)) + 
  geom_point() + 
  facet_wrap(~ z)


# Compute correlations for each dataset
noise_summary <- noise %>%
  group_by(z) %>%
  summarize(N = n(), spurious_cor = cor(x, y))

# Isolate sets with correlations above 0.2 in absolute strength
noise_summary %>%
  filter(abs(spurious_cor) > 0.2)
