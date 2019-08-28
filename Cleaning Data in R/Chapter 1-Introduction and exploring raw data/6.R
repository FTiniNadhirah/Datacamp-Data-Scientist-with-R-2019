# Visualizing your data
# There are many ways to visualize data. Since this is not a course about data visualization, we will only touch on two types of plots that may be useful for quickly identifying extreme or suspicious values in your data: histograms and scatter plots.
# 
# A histogram, created with the hist() function, takes a vector (i.e. column) of data, breaks it up into intervals, then plots as a vertical bar the number of instances within each interval. A scatter plot, created with the plot() function, takes two vectors (i.e. columns) of data and plots them as a series of (x, y) coordinates on a two-dimensional plane.
# 
# Let's look at a quick example of each.
# 
# Instructions
# 100 XP
# For the bmi dataset:
# 
# Use hist() to look at the distribution of average BMI across all countries in 2008.
# Use plot() to see how each country's average BMI in 1980 (x-axis) compared with its BMI in 2008 (y-axis).


# Histogram of BMIs from 2008
hist(bmi$Y2008)

# Scatter plot comparing BMIs from 1980 to those from 2008
plot(bmi$Y1980,bmi$Y2008)