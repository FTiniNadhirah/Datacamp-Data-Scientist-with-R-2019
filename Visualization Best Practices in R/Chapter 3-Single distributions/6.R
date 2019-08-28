# Exercise
# Exercise
# More bars
# With the last plot, 40 bins make it roughly look like we have a skewed but unimodal distribution. Remember the rule-of-thumb from the slides: if you have more than 150 datapoints you should usually shoot straight up to 100 bins. Let's do that here.
# 
# Edit the plot to have 100 bins instead of 40 and also change the color of the bars to 'steelblue' just because it's a good color and sometimes that's important.
# 
# Do you notice anything about the range around 30% now? If you want to get a little more of an idea of what could be happening, try filtering the data to the percentage over the speed limit of 30.
# 
# md_speeding %>% filter(percentage_over_limit == 30)
# See anything surprising for a continuous value?
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Change bin number to 100
# Set fill of bars to 'steelblue'

ggplot(md_speeding) +
  geom_histogram(
    aes(x = percentage_over_limit),
    bins = 100,         # switch to 100 bins
    fill = 'steelblue', # set the fill of the bars to 'steelblue'
    alpha = 0.8 )