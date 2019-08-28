# Chicken weight
# The ChickWeight dataset is a data frame which represents the progression of weight of several chicks. The little chicklings are each given a specific diet. There are four types of diet and the farmer wants to know which one fattens the chicks the fastest.
# 
# It's time to do some exploratory statistics on the data frame using the techniques you learned in this course! Let's do some ggplot-ing!
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# 1 - Execute head(ChickWeight) to check the first few rows of this dataset. Looks like the data is pretty tidy!
#   2 - Plot a line for each chick.
# Use ggplot() and map Time to x and weight to y within the aes() function.
# Add geom_line() at the end to draw the lines.
# To draw one line per chick, add group = Chick to the aes() of geom_line().
# Oops! That looks pretty chaotic and you can't really conclude anything from it. Let's try again.
# 3 - Take plot 2 and add color = Diet within the aes() of ggplot(). There's some more information here, although it would be better to have some summary statistics as well. What do you think would be helpful?
# 4 - Take plot 3 and add geom_smooth() with attributes lwd set to 2 and se set to FALSE. Inside geom_line(), set alpha of to 0.3.

# ChickWeight is available in your workspace
# 1 - Check out the head of ChickWeight
head(ChickWeight)

# 2 - Basic line plot
ggplot(ChickWeight, aes(x = Time, y = weight)) + 
  geom_line(aes(group = Chick))
# 3 - Take plot 2, map Diet onto col.
ggplot(ChickWeight, 
       aes(x = Time, y = weight, col = Diet)) + 
  geom_line(
    aes(group = Chick))


# 4 - Take plot 3, add geom_smooth()
ggplot(ChickWeight, 
       aes(x = Time, y = weight, col = Diet)) + 
  geom_line(
    aes(group = Chick), alpha = 0.3) + 
  geom_smooth(lwd = 2, se = F)

