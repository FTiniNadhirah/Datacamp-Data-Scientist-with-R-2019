# Adding a regression line to a plot manually
# The geom_smooth() function makes it easy to add a simple linear regression line to a scatterplot of the corresponding variables. And in fact, there are more complicated regression models that can be visualized in the data space with geom_smooth(). However, there may still be times when we will want to add regression lines to our scatterplot manually. To do this, we will use the geom_abline() function, which takes slope and intercept arguments. Naturally, we have to compute those values ahead of time, but we already saw how to do this (e.g. using coef()).
# 
# The coefs data frame contains the model estimates retrieved from coef(). Passing this to geom_abline() as the data argument will enable you to draw a straight line on your scatterplot.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use geom_abline() to add a line defined in the coefs data frame to a scatterplot of weight vs. height for individuals in the bdims dataset.
# 


# Add the line to the scatterplot
ggplot(data = bdims, aes(x = hgt, y = wgt)) + 
  geom_point() + 
  geom_abline(data = coefs, 
              aes(intercept = `(Intercept)`, slope = hgt),  
              color = "dodgerblue")