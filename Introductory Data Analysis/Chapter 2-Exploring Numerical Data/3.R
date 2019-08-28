# Marginal and conditional histograms
# Now, turn your attention to a new variable: horsepwr. The goal is to get a sense of the marginal distribution of this variable and then compare it to the distribution of horsepower conditional on the price of the car being less than $25,000.
# 
# You'll be making two plots using the "data pipeline" paradigm, where you start with the raw data and end with the plot.
# 
# Instructions
# 100 XP
# Create a histogram of the distribution of horsepwr across all cars and add an appropriate title. Start by piping in the raw dataset.
# Create a second histogram of the distribution of horsepower, but only for those cars that have an msrp less than $25,000. Keep the limits of the x-axis so that they're similar to that of the first plot, and add a descriptive title.

# Create hist of horsepwr
cars %>%
  ggplot(aes(horsepwr)) +
  geom_histogram() +
  ggtitle("Horsepower distribution")

# Create hist of horsepwr for affordable cars
cars %>% 
  filter(msrp < 25000) %>%
  ggplot(aes(horsepwr)) +
  geom_histogram() +
  xlim(c(90, 550)) +
  ggtitle("Horsepower distribtion for msrp < 25000")