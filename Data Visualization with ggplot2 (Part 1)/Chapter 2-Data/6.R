# Variables to visuals, part 2
# Here you'll take a look at another plot variant, shown on the right. Which of your data frames would be used to produce this plot?
# 
# Instructions
# 100 XP
# Look at the heads of iris, iris.wide and iris.tidy using head().
# Fill in the ggplot function with the appropriate data frame and variable names. The names of the aesthetics of the plot will match with variable names in your dataset. The previous instruction will help you match variable names in datasets with the ones in the plot.

# Consider the head of iris, iris.wide and iris.tidy (in that order)
head(iris)
head(iris.wide)
head(iris.tidy)

# Think about which dataset you would use to get the plot shown right
# Fill in the ___ to produce the plot given to the right
ggplot(iris.wide, aes(x = Length, y = Width, color = Part)) +
  geom_jitter() +
  facet_grid(. ~ Species)