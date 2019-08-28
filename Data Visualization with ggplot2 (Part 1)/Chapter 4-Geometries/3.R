# Histograms
# Histograms are one of the most common and intuitive ways of showing distributions. In this exercise you'll use the mtcars data frame to explore typical variations of simple histograms. But first, some background:
# 
# The x axis/aesthetic: The documentation for geom_histogram() states the argument stat = "bin" as a default. Recall that histograms cut up a continuous variable into discrete bins - that's what the stat "bin" is doing. You always get 30 evenly-sized bins by default, which is specified with the default argument binwidth = range/30. This is a pretty good starting point if you don't know anything about the variable being ploted and want to start exploring.
# 
# The y axis/aesthetic: geom_histogram() only requires one aesthetic: x. But there is clearly a y axis on your plot, so where does it come from? Actually, there is a variable mapped to the y aesthetic, it's called ..count... When geom_histogram() executed the binning statistic (see above), it not only cut up the data into discrete bins, but it also counted how many values are in each bin. So there is an internal data frame where this information is stored. The .. calls the variable count from this internal data frame. This is what appears on the y aesthetic. But it gets better! The density has also been calculated. This is the proportional frequency of this bin in relation to the whole data set. You use ..density.. to access this information.
# 
# Instructions
# 100 XP
# 1 - Use the mtcars data frame and make a univariate histogram by mapping mpg onto the x aesthetic. Use geom_histogram() for the geom layer.
# 2 - Take plot 1 and manually create 1-unit wide bins with the binwidth = 1 argument in geom_histogram().
# 3 - Take plot 2, and map ..density.. onto the y aesthetic (i.e. inside an aes()) inside geom_histogram(). You'll have two aes() functions: one inside ggplot() and another inside geom_histogram(). (See the intro text for a discussion of ..density..).
# 4 - Take plot 3 and set the attribute fill, the inside of the bars, to the value "#377EB8" in geom_histogram(). This should not appear in aes(), since it's an attribute, not an aesthetic mapping.

# 1 - Make a univariate histogram
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram()

# 2 - Plot 1, plus set binwidth to 1 in the geom layer
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(binwidth = 1)


# 3 - Plot 2, plus MAP ..density.. to the y aesthetic (i.e. in a second aes() function)
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(aes(y = ..density..), binwidth = 1)


# 4 - plot 3, plus SET the fill attribute to "#377EB8"
ggplot(mtcars, aes(x = mpg)) +
  geom_histogram(aes(y = ..density..), binwidth = 1, fill = "#377EB8")

