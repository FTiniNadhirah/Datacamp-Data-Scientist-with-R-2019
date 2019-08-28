# sapply can't simplify, now what?
# It seems like we've hit the jackpot with sapply(). On all of the examples so far, sapply() was able to nicely simplify the rather bulky output of lapply(). But, as with life, there are things you can't simplify. How does sapply() react?
# 
# We already created a function, below_zero(), that takes a vector of numerical values and returns a vector that only contains the values that are strictly below zero.
# 
# Instructions
# 100 XP
# Apply below_zero() over temp using sapply() and store the result in freezing_s.
# Apply below_zero() over temp using lapply(). Save the resulting list in a variable freezing_l.
# Compare freezing_s to freezing_l using the identical() function.

# temp is already prepared for you in the workspace

# Definition of below_zero()
below_zero <- function(x) {
  return(x[x < 0])
}

# Apply below_zero over temp using sapply(): freezing_s
freezing_s <- sapply(temp, below_zero)

# Apply below_zero over temp using lapply(): freezing_l
freezing_l <- lapply(temp, below_zero)

# Are freezing_s and freezing_l identical?
identical(freezing_s, freezing_l)