# Histogram to KDE
# For these exercises, we will be looking at a subset of our data of citations handed out to "Heavy Duty Truck"s. We may be a data-savvy truck driver and want to know when the most dangerous time to be out on the road is. Note that the sample size here is only 32 observations.
# 
# Below is code to make a default histogram with ggplot. Unsurprisingly, it's not great. There's not really enough data to fill out even 30 bins, making it rather hard to read or get a grasp of the data. Switch the geometry to a KDE using geom_density(). Lastly, in an effort to maintain the most transparency with your visualization, add a subtitle to the plot telling the viewer the bin-width used for your KDE.
# 
# Instructions
# 100 XP
# Change histogram geometry to a density one (geom_density()).
# Modify the default bin width to be 1.5 units.
# Add the subtitle "Gaussian kernel SD = 1.5"to your plot, telling the reader the binwidth of your kernel.

# filter data to just heavy duty trucks
truck_speeding <- md_speeding %>% 
  filter(vehicle_type == "Heavy Duty Truck")

ggplot(truck_speeding, aes(x = hour_of_day)) +
  # switch to density with bin width of 1.5, keep fill 
  geom_density(bw = 1.5, fill = 'steelblue') +
  # add a subtitle stating binwidth
  labs(title = 'Citations by hour', subtitle = "Gaussian kernel SD = 1.5")