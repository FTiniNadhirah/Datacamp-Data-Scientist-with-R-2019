# A basic ridgeline plot
# Supplied is code to make a ridgeline plot looking at the percentage over the limit drivers were pulled over going by day of the week.
# 
# Modify the code to set the kernel width (bandwidth) to a specified value, change the x-axis limits to get rid of the long tails, and also add a subtitle letting the reader know the bandwidth you are using.
# 
# Instructions
# 100 XP
# Change the bandwidth to 3.5 in geom_density_ridges().
# Set the limits of the x-scale to 0 to 150.
# Give plot the subtitle 'Gaussian kernel SD = 3.5'.

library(ggridges)

md_speeding %>% 
  mutate(day_of_week = factor(day_of_week, levels = c("Mon","Tues","Wed","Thu","Fri","Sat","Sun") )) %>% 
  ggplot(aes( x = percentage_over_limit, y = day_of_week)) + 
  # Set bandwidth to 3.5
  geom_density_ridges(bandwidth = 3.5) +
  # add limits of 0 to 150 to x-scale
  scale_x_continuous(limits = c(0,150)) +
  # provide subtitle with bandwidth
  labs(subtitle = 'Gaussian kernel SD = 3.5')