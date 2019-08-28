# Adjusting the bin numbers
# Let's take our first steps away from the default number of bins with our histograms. We'll start by building a histogram of the percentage of the speed a driver is traveling over the limit for each citation. This is calculated as ((speed - speed_limit) / speed_limit)*100.
# 
# Plot percentage over the speed limit as a histogram with the number of bins set to 40. While you're at it, set the alpha to 0.8. You're entirely on your own with this one, no scaffolding.
# 
# Instructions
# 100 XP
# Load md_speeding into ggplot() object.
# Add a histogram geometry to plot.
# Set x aes()thetic to percentage_over_limit.
# Adjust settings for 40 bins and set alpha as 0.8.


# Load md_speeding into ggplot
ggplot(md_speeding) +
  # add a geom_histogram with x mapped to percentage_over_limit
  geom_histogram(
    aes(x = percentage_over_limit),
    bins = 40,     # 40 binsset bin number to 40
    alpha = 0.8 )  # reduce alpha to 0.8