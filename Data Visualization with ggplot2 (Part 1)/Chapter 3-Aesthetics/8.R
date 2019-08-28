# Setting a dummy aesthetic
# In the last chapter you saw that all the visible aesthetics can serve as attributes and aesthetics, but I very conveniently left out x and y. That's because although you can make univariate plots (such as histograms, which you'll get to in the next chapter), a y-axis will always be provided, even if you didn't ask for it.
# 
# In the base package you can make univariate plots with stripchart() (shown in the viewer) directly and it will take care of a fake y axis for us. Since this is univariate data, there is no real y axis.
# 
# You can get the same thing in ggplot2, but it's a bit more cumbersome. The only reason you'd really want to do this is if you were making many plots and you wanted them to be in the same style, or you wanted to take advantage of an aesthetic mapping (e.g. colour).
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Try to run ggplot(mtcars, aes(x = mpg)) + geom_point() in the console. x is only one of the two essential aesthetics for geom_point(), which is why you get an error message.
# 1 - To fix this, map a value, e.g. 0, instead of a variable, onto y. Use geom_jitter() to avoid having all the points on a horizontal line.
# 2 - To make everything look nicer, copy & paste the code for plot 1 and change the limits of the y axis using the appropriate scale_y_...() function. Set the limits argument to c(-2, 2).

# 1 - Create jittered plot of mtcars, mpg onto x, 0 onto y
ggplot(mtcars, aes(x = mpg, y = 0)) +
  geom_jitter()

# 2 - Add function to change y axis limits
ggplot(mtcars, aes(x = mpg, y = 0)) +
  geom_jitter() +
  scale_y_continuous(limits = c(-2,2))
