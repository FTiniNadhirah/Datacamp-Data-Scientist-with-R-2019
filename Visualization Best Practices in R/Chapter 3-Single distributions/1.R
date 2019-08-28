# Orienting with the data
# Let's take our first look at the new speeding dataset.
# 
# First, print the dataframe to your screen and try and get a sense of it. You can use filter()s, groupby()s or any of your tidyverse functions to do this.
# 
# The supplied code is what we used to make the histogram of blue car speeds in the slides. Modify this code to look at how many miles-per-hour red cars were going over the speed limit (speed_over). Give the plot a title while you're at it to let people know what they're looking at.
# 
# Instructions
# 100 XP
# Print the md_speeding dataframe to the console and investigate it.
# Change filter() to 'RED' cars.
# Change column of interest to speed_over.
# Title plot 'MPH over speed limit | Red cars'

# Print data to console
md_speeding

# Filter to red cars
md_speeding %>% 
  filter(vehicle_color == 'RED') %>% 
  # switch x mapping to speed_over column
  ggplot(aes(x = speed_over)) +
  geom_histogram() +
  # give plot a title
  ggtitle('MPH over speed limit | Red cars')