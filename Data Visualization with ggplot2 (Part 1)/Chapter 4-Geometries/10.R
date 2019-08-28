# Line plots
# In the video you saw how to make line plots using time series data. To explore this topic, you'll use the economics data frame, which contains time series for unemployment and population statistics from the Federal Reserve Bank of St. Louis in the US. The data is contained in the ggplot2 package.
# 
# To begin with, you can look at how the median unemployment time and the unemployment rate (the number of unemployed people as a proportion of the population) change over time.
# 
# In the next exercises, you'll explore to how add embellishments to the line plots, such as recession periods.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Print out the head() of the economics data frame.
# Use the economics data frame to plot date on the x axis and unemploy on the y-axis. Use geom_line().
# Copy, paste and adjust the code for the previous instruction: instead of unemploy, plot unemploy/pop to represent the fraction of the total population that is unemployed.
# # 

# Print out head of economics
head(economics)

# Plot unemploy as a function of date using a line plot
ggplot(economics, aes(x = date, y = unemploy)) +
  geom_line()


# Adjust plot to represent the fraction of total population that is unemployed
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_line()