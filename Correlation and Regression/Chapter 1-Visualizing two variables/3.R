# Creating scatterplots
# Creating scatterplots is simple and they are so useful that is it worthwhile to expose yourself to many examples. Over time, you will gain familiarity with the types of patterns that you see. You will begin to recognize how scatterplots can reveal the nature of the relationship between two variables.
# 
# In this exercise, and throughout this chapter, we will be using several datasets listed below. These data are available through the openintro package. Briefly:
#   
#   The mammals dataset contains information about 39 different species of mammals, including their body weight, brain weight, gestation time, and a few other variables.
# The mlbBat10 dataset contains batting statistics for 1,199 Major League Baseball players during the 2010 season.
# The bdims dataset contains body girth and skeletal diameter measurements for 507 physically active individuals.
# The smoking dataset contains information on the smoking habits of 1,691 citizens of the United Kingdom.
# To see more thorough documentation, use the ? or help() functions.
# 
# Instructions 1/4
# 25 XP
# 1
# Using the mammals dataset, create a scatterplot illustrating how the brain weight of a mammal varies as a function of its body weight.
# 
# Take Hint (-7 XP)
# 2
# Using the mlbBat10 dataset, create a scatterplot illustrating how the slugging percentage (SLG) of a player varies as a function of his on-base percentage (OBP).
# 
# 3
# Using the bdims dataset, create a scatterplot illustrating how a person's weight varies as a function of their height. Use color to separate by sex, which you'll need to coerce to a factor with factor().
# 
# 4
# Using the smoking dataset, create a scatterplot illustrating how the amount that a person smokes on weekdays varies as a function of their age.


# Mammals scatterplot

ggplot(mammals, aes(x = BodyWt, y = BrainWt )) + 
  geom_point()

# Baseball player scatterplot

ggplot(mlbBat10, aes(x = OBP, y = SLG)) + 
  geom_point()
# Body dimensions scatterplot

ggplot(bdims, aes(x = hgt, y = wgt, color = factor(sex))) + 
  geom_point()

# Smoking scatterplot
ggplot(smoking, aes(x = age, y = amtWeekdays)) + 
  geom_point()

