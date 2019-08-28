# Another look at strange values
# Another useful way of looking at strange values is with boxplots. Simply put, boxplots draw a box around the middle 50% of values for a given variable, with a bolded horizontal line drawn at the median. Values that fall far from the bulk of the data points (i.e. outliers) are denoted by open circles. (If you're curious about the exact formula for determining what is "far", check out ?hist.)
# 
# In this situation, we are concerned about three things:
# 
# Since this dataset is about students and the only student above the age of 22 is 38 years old, we must wonder whether this is an error in the data or just an older student (perhaps returning to school after working for several years).
# There are four values of -1 for the absences variable, which is either a mistake or an intentional coding meant to say, for example, "this value is missing".
# There are several extreme values of absences in the positive direction, with a maximum value of 75 (which is over 18 times the median value of 4).
# Instructions
# 100 XP
# View a boxplot() of the age variable from students3.
# View a boxplot() of the absences variable from students3

# View a boxplot of age
boxplot(students3$age)

# View a boxplot of absences
boxplot(students3$absences)