# Variables to visuals, part 1
# So far you've seen four different forms of the iris dataset: iris, iris.wide, iris.wide2 and iris.tidy. Don't let all these different forms confuse you! It's exactly the same data, just rearranged so that your plotting functions become easier.
# 
# To see this in action, consider the plot in the graphics device at right. Which form of the dataset would be the most appropriate to use here?
# 
# Instructions
# 100 XP
# Look at the structures of iris, iris.wide and iris.tidy using str().
# Fill in the ggplot function with the appropriate data frame and variable names. The variable names of the aesthetics of the plot will match the ones you found using the str() command in the previous step.


# Consider the structure of iris, iris.wide and iris.tidy (in that order)

library(tidyr)

str(iris)


# Think about which dataset you would use to get the plot shown right
# Fill in the ___ to produce the plot given to the right
ggplot(iris.tidy, aes(x = Species, y = Value, col = Part)) +
  geom_jitter() +
  facet_grid(. ~ Measure)

str(iris.wide)

str(iris.tidy)