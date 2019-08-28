# Bin width by context
# The supplied code looks at the distribution of citations by hour of the day. Notice how the bars don't fall nicely on a given hour; making the interpretation of the bar heights a bit ungainly. When your data has natural breakpoints like this, you should exploit them. In this case, we can set our breaks to fall on the hour boundaries.
# 
# Modify geom_histogram() to set the binwidth to 1 hour. This argument, however, doesn't tell ggplot where to start its bins, which by default is determined by the extent of the data. To fix this, set the center argument to 0.5. This says you want one of the bars to be centered at 30 mins past midnight, ggplot then arranges the rest of the bars accordingly. (You could set this to be any hour + 0.5 such as 2.5, 3.5 etc..)
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Set the binwidth of the plot to 1.
# Center the bars on the half hour with the center argument.


ggplot(md_speeding,aes(x = hour_of_day)) +
  geom_histogram(
    binwidth = 1, # set the binwidth to 1
    center = 0.5  # Center bins at the half (0.5) hour
  ) +
  scale_x_continuous(breaks = 0:24)