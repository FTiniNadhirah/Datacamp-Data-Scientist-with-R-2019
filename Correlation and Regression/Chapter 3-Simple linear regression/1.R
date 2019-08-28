# The "best fit" line
# The simple linear regression model for a numeric response as a function of a numeric explanatory variable can be visualized on the corresponding scatterplot by a straight line. This is a "best fit" line that cuts through the data in a way that minimizes the distance between the line and the data points.
# 
# We might consider linear regression to be a specific example of a larger class of smooth models. The geom_smooth() function allows you to draw such models over a scatterplot of the data itself. This technique is known as visualizing the model in the data space. The method argument to geom_smooth() allows you to specify what class of smooth model you want to see. Since we are exploring linear models, we'll set this argument to the value "lm".
# 
# Note that geom_smooth() also takes an se argument that controls the standard error, which we will ignore for now.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Create a scatterplot of body weight as a function of height for all individuals in the bdims dataset with a simple linear model plotted over the data.


# Scatterplot with regression line
ggplot(data = bdims, aes(x = hgt, y = wgt)) + 
  geom_point() + 
  geom_smooth(method = "lm", se = FALSE)
