# Selection by comparison - Step 1
# By making use of comparison operators, we can approach the previous question in a more proactive way.
# 
# The (logical) comparison operators known to R are:
#   
#   < for less than
# > for greater than
# <= for less than or equal to
# >= for greater than or equal to
# == for equal to each other
# != not equal to each other
# As seen in the previous chapter, stating 6 > 5 returns TRUE. The nice thing about R is that you can use these comparison operators also on vectors. For example:
#   
#   > c(4, 5, 6) > 5
# [1] FALSE FALSE TRUE
# This command tests for every element of the vector if the condition stated by the comparison operator is TRUE or FALSE.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Check which elements in poker_vector are positive (i.e. > 0) and assign this to selection_vector.
# Print out selection_vector so you can inspect it. The printout tells you whether you won (TRUE) or lost (FALSE) any money for each 

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector