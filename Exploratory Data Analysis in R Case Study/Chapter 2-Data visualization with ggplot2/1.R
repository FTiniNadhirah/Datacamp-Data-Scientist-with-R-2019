# Plotting a line over time
# In the last chapter, you learned how to summarize() the votes dataset by year, particularly the percentage of votes in each year that were "yes".
# 
# You'll now use the ggplot2 package to turn your results into a visualization of the percentage of "yes" votes over time.
# 
# Instructions
# 100 XP
# The by_year dataset has the number of votes and percentage of "yes" votes each year.
# 
# Load the ggplot2 package.
# Use ggplot() with the geom_line layer to create a line plot with year on the x-axis and percent_yes on the y-axis.

# Define by_year
by_year <- votes_processed %>%
  group_by(year) %>%
  summarize(total = n(),
            percent_yes = mean(vote == 1))

# Load the ggplot2 package
library(ggplot2)

# Create line plot
ggplot(by_year, aes(x = year, y = percent_yes)) +
  geom_line()