# Exploring ggplot2, part 1
# To get a first feel for ggplot2, let's try to run some basic ggplot2 commands. Together, they build a plot of the mtcars dataset that contains information about 32 cars from a 1973 Motor Trend magazine. This dataset is small, intuitive, and contains a variety of continuous and categorical variables.
# 
# Instructions

# Load the ggplot2 package using library(). It is already installed on DataCamp's servers.
# Use str() to explore the structure of the mtcars dataset.
# Hit Submit Answer. This will execute the example code on the right. See if you can understand what ggplot does with the data.

# Load the ggplot2 package
library(ggplot2)

# Explore the mtcars data frame with str()
str(mtcars)

# Execute the following command
ggplot(mtcars, aes(x = cyl, y = mpg)) +
  geom_point()