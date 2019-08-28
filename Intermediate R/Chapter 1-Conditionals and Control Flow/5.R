# & and |
#   Before you work your way through the next exercises, have a look at the following R expressions. All of them will evaluate to TRUE:
#   
#   TRUE & TRUE
# FALSE | TRUE
# 5 <= 5 & 2 < 3
# 3 < 4 | 7 < 6
# Watch out: 3 < x < 7 to check if x is between 3 and 7 will not work; you'll need 3 < x & x < 7 for that.
# 
# In this exercise, you'll be working with the last variable. This variable equals the last value of the linkedin vector that you've worked with previously. The linkedin vector represents the number of LinkedIn views your profile had in the last seven days, remember? Both the variables linkedin and last have already been defined in the editor.
# 
# Instructions
# 100 XP
# Write R expressions to solve the following questions concerning the variable last:
# 
# Is last under 5 or above 10?
# Is last between 15 and 20, excluding 15 but including 20?

# The linkedin and last variable are already defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last <- tail(linkedin, 1)

# Is last under 5 or above 10?
last < 5 | last > 10

# Is last between 15 (exclusive) and 20 (inclusive)?
last  > 15 & last <=20 

