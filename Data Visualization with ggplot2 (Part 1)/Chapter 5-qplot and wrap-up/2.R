# Using aesthetics
# You already saw how some aesthetics are only applicable to categorical variables, such as shapes and linetypes. But just because others, such as size and color (and hence fill), can be applied to both categorical and continuous variables, doesn't mean that they're suitable for both.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# A basic scatter plot of mpg vs. wt from the mtcars dataset, made with qplot(), is provided.
# Using qplot(), map the categorical variable cyl onto size. Remember, you'll have to wrap the variable name in a factor() function to convert to a categorical variable.
# Use qplot() again to the same plot, except with gear mapped onto size.
# Using qplot(), map the continuous variable hp onto color.
# Use qplot() again to the same plot, except with qsec mapped onto color.


# basic qplot scatter plot:
qplot(wt, mpg, data = mtcars)

# Categorical variable mapped onto size:
# cyl
qplot(wt, mpg, data = mtcars, size = factor(cyl))
# gear
qplot(wt, mpg, data = mtcars, size = factor(gear))

# Continuous variable mapped onto col:
# hp
qplot(wt, mpg, data = mtcars, col = hp)

# qsec
qplot(wt, mpg, data = mtcars, col = qsec)