# Scatterplots
# Scatterplots are the most common and effective tools for visualizing the relationship between two numeric variables.
# 
# The ncbirths dataset is a random sample of 1,000 cases taken from a larger dataset collected in 2004. Each case describes the birth of a single child born in North Carolina, along with various characteristics of the child (e.g. birth weight, length of gestation, etc.), the child's mother (e.g. age, weight gained during pregnancy, smoking habits, etc.) and the child's father (e.g. age). You can view the help file for these data by running ?ncbirths in the console.
# 
# Instructions
# 100 XP
# Using the ncbirths dataset, make a scatterplot using ggplot() to illustrate how the birth weight of these babies varies according to the number of weeks of gestation.

# Scatterplot of weight vs. weeks
ggplot(ncbirths, aes(x = weeks, y = weight)) + 
  geom_point()
