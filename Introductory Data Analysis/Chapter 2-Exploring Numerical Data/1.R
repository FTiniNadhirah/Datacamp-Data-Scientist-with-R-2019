# Faceted histogram
# In this chapter, you'll be working with the cars dataset, which records characteristics on all of the new models of cars for sale in the US in a certain year. You will investigate the distribution of mileage across a categorial variable, but before you get there, you'll want to familiarize yourself with the dataset.
# 
# Instructions
# 100 XP
# The cars dataset has been loaded in your workspace.
# 
# Load the ggplot2 package.
# View the size of the data and the variable types using str().
# Plot a histogram of city_mpg faceted by suv, a logical variable indicating whether the car is an SUV or not.


# Load package
library(ggplot2)

# Learn data structure
str(cars)

# Learn data structure

# Create faceted histogram
ggplot(cars, aes(x = city_mpg)) +
  geom_histogram() +
  facet_wrap(~ suv)