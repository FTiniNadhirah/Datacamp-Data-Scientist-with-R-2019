# Fitting a linear model "by hand"
# Recall the simple linear regression model:
#   Y=b0+b1???X
# Two facts enable you to compute the slope b1 and intercept b0 of a simple linear regression model from some basic summary statistics.
# 
# First, the slope can be defined as:
#   
#   b1=rX,Y???sYsX
# where rX,Y represents the correlation (cor()) of X and Y and sX and sY represent the standard deviation (sd()) of X and Y, respectively.
# 
# Second, the point (x¯,y¯) is always on the least squares regression line, where x¯ and y¯ denote the average of x and y, respectively.
# 
# The bdims_summary data frame contains all of the information you need to compute the slope and intercept of the least squares regression line for body weight (Y) as a function of height (X). You might need to do some algebra to solve for b0!
#   
#   Instructions
# 100 XP
# Print the bdims_summary data frame.
# Use mutate() to add the slope and intercept to the bdims_summary data frame.

# Print bdims_summary
bdims_summary
# Add slope and intercept
bdims_summary %>%
  mutate(
    slope = r * sd_wgt/sd_hgt, 
    intercept = mean_wgt - (slope * mean_hgt)
  )