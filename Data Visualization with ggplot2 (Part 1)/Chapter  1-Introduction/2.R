# Exercise
# Exercise
# Exploring ggplot2, part 2
# The plot from the previous exercise wasn't really satisfying. Although cyl (the number of cylinders) is categorical, it is classified as numeric in mtcars. You'll have to explicitly tell ggplot2 that cyl is a categorical variable.
# 
# Instructions

# Change the ggplot() command by wrapping factor() around cyl.
# Hit Submit Answer and see if the resulting plot is better this time.

library(ggplot2)

# Change the command below so that cyl is treated as factor
ggplot(mtcars, aes(x = factor(cyl), y = mpg)) +
  geom_point()