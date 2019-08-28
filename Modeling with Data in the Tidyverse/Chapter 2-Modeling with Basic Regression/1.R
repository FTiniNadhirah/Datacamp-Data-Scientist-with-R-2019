# Plotting a "best-fitting" regression line
# Previously you visualized the relationship of teaching score and "beauty score" via a scatterplot. Now let's add the "best-fitting" regression line to provide a sense of any overall trends. Even though you know this plot suffers from overplotting, you'll stick to the non-jitter version.
# 
# Instructions
# 100 XP
# Add a regression line without the error bars to the scatterplot.
# 

# Load packages
library(ggplot2)
library(dplyr)
library(moderndive)

# Plot 
ggplot(evals, aes(x = bty_avg, y = score)) +
  geom_point() +
  labs(x = "beauty score", y = "score") +
  geom_smooth(method = "lm", se = FALSE)