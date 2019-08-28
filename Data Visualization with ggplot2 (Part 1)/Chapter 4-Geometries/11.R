# Periods of recession
# By themselves, time series often contain enough valuable information, but you always want to maximize the number of variables you can show in a plot. This allows you (and your viewers) to begin making comparisons between those variables that would otherwise be difficult or impossible.
# 
# Here, you'll add shaded regions to the background to indicate recession periods. How do unemployment rate and recession period interact with each other?
# 
# In addition to the economics dataset from before, you'll also use the recess dataset for the periods of recession. The recess data frame contains 2 variables: the begin period of the recession and the end. It's already available in your workspace.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Expand the command from the previous exercise with geom_rect(). You will use this geom layer to draw rectangles across the recession periods. There are a few pitfalls here:
# 
# geom_rect() uses the recess dataset, so pass this directly as data = recess inside geom_rect().
# The geom_rect() command shouldn't inherit aesthetics from the base ggplot() command it belongs to. It would result in an error, since you're using a different dataset and it doesn't contain unemploy or pop. That's why you should specify inherit.aes = FALSE in geom_rect().
# geom_rect() needs four aesthetics: xmin, xmax, ymin and ymax. These should be set to begin, end and -Inf, +Inf, respectively. Define them within aes().
# The rectangles you add will be black and opaque by default. Set fill to "red" and alpha to 0.2 to improve this. Define them outside aes().


# Basic line plot
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_line()

# Expand the following command with geom_rect() to draw the recess periods
ggplot(economics, aes(x = date, y = unemploy/pop)) +
  geom_rect(data = recess,
            aes(xmin = begin, 
                xmax = end, 
                ymin = -Inf, 
                ymax = Inf),
            inherit.aes = FALSE,
            fill = "red", 
            alpha = 0.2
  ) + 
  geom_line()