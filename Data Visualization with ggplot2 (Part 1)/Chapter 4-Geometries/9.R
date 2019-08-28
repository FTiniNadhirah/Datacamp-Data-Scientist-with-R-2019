# Overlapping histograms (2)
# As a last example of bar plots, you'll return to histograms (which you now see are just a special type of bar plot). You saw a nice trick in a previous exercise of how to slightly overlap bars, but now you'll see how to overlap them completely. This would be nice for multiple histograms, as long as there are not too many different overlaps!
#   
#   You'll make a histogram using the mpg variable in the mtcars data frame.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# 1 - A basic histogram plot is provided.
# 2 - Take plot 1 and map am onto fill within the aes() function. The default position is "stack".
# 3 - Take plot 2 and add the position argument within geom_histogram(). Set it to "dodge".
# 4 - Take plot 3 and change the position argument to "fill". In this case, none of these positions really work well, because it's difficult to compare the distributions directly.
# 5 - Take plot 4 and change the position argument to "identity" and set alpha = 0.4. This produces overlapping bars.
# 6 - Take plot 5 and change the aesthetic mapping. Map cyl onto fill.

# 1 - Basic histogram plot command
ggplot(mtcars, aes(mpg)) +
  geom_histogram(binwidth = 1)

# 2 - Plot 1, Expand aesthetics: am onto fill
ggplot(mtcars, aes(mpg, fill = am)) + 
  geom_histogram(binwidth = 1)


# 3 - Plot 2, change position = "dodge"
ggplot(mtcars, aes(mpg, fill = am)) + 
  geom_histogram(binwidth = 1, position = "dodge")


# 4 - Plot 3, change position = "fill"
ggplot(mtcars, aes(mpg, fill = am)) + 
  geom_histogram(binwidth = 1, position = "fill")


# 5 - Plot 4, plus change position = "identity" and alpha = 0.4
ggplot(mtcars, aes(mpg, fill = am)) + 
  geom_histogram(binwidth = 1, 
                 position = "identity",
                 alpha = 0.4)


# 6 - Plot 5, plus change mapping: cyl onto fill
ggplot(mtcars, aes(mpg, fill = cyl)) + 
  geom_histogram(binwidth = 1, 
                 position = "identity",
                 alpha = 0.4)
