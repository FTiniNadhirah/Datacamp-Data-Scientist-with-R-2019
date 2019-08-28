# Variable assignment
# Throughout the exercises in this chapter, you'll be visualizing a subset of the gapminder data from the year 1952. First, you'll have to load the ggplot2 package, and create a gapminder_1952 dataset to visualize.
# 
# By the way, if you haven't downloaded it already, check out the tidyverse for beginners Cheat Sheet. It includes an overview of the most important concepts, functions and methods and might come in handy if you ever need a quick refresher!
# 
# Instructions
# 100 XP
# Load the ggplot2 package after the gapminder and dplyr packages.
# Filter gapminder for observations from the year 1952, and assign it to a new dataset gapminder_1952 using the assignment operator (<-).

# Load the ggplot2 package as well
library(gapminder)
library(dplyr)
library(ggplot2)


# Create gapminder_1952
gapminder_1952 <- gapminder %>%
  filter(year == 1952)

gapminder_1952