# Computing correlation
# The cor(x, y) function will compute the Pearson product-moment correlation between variables, x and y. Since this quantity is symmetric with respect to x and y, it doesn't matter in which order you put the variables.
# 
# At the same time, the cor() function is very conservative when it encounters missing data (e.g. NAs). The use argument allows you to override the default behavior of returning NA whenever any of the values encountered is NA. Setting the use argument to "pairwise.complete.obs" allows cor() to compute the correlation coefficient for those observations where the values of x and y are both not missing.
# 
# Instructions
# 100 XP
# Use cor() to compute the correlation between the birthweight of babies in the ncbirths dataset and their mother's age. There is no missing data in either variable.
# Compute the correlation between the birthweight and the number of weeks of gestation for all non-missing pairs.

# Compute correlation
ncbirths %>%
  summarize(N = n(), r = cor(mage, weight))

# Compute correlation for all non-missing pairs
ncbirths %>%
  summarize(N = n(), r = cor(weeks, weight, use = "pairwise.complete.obs"))