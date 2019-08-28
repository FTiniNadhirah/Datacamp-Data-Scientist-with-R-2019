# Overlapping bar plots
# So far you've seen three different positions for bar plots: stack (the default), dodge (preferred), and fill (to show proportions).
# 
# However, you can go one step further by adjusting the dodging, so that your bars partially overlap each other. For this example you'll again use the mtcars dataset. Like last time cyl and am are already available as factors inside mtcars.
# 
# Instead of using position = "dodge" you're going to use position_dodge(), like you did with position_jitter() in the Scatter plots and jittering (1) exercise. Here, you'll save this as an object, posn_d, so that you can easily reuse it.
# 
# Remember, the reason you want to use position_dodge() (and position_jitter()) is to specify how much dodging (or jittering) you want.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# 1 - The last plot from the last exercise has been provided for you.
# 2 - Define a new object called posn_d by calling position_dodge() with the argument width = 0.2.
# 3 - Take plot 1 and make slightly overlapping bars by using the position = posn_d argument.
# 4 - Take plot 3 and set alpha = 0.6 to see the overlap in bars.

# 1 - The last plot form the previous exercise
ggplot(mtcars, aes(x = cyl, fill = am)) +
  geom_bar(position = "dodge")

# 2 - Define posn_d with position_dodge()
posn_d <- position_dodge(width = 0.2)

# 3 - Change the position argument to posn_d
ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar(position = posn_d)


# 4 - Use posn_d as position and adjust alpha to 0.6
ggplot(mtcars, aes(x = cyl, fill = am)) + 
  geom_bar(position = posn_d, alpha = 0.6)

