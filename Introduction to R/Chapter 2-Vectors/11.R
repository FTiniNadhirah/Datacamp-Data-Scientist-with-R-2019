# Vector selection: the good times (2)
# How about analyzing your midweek results?
#   
#   To select multiple elements from a vector, you can add square brackets at the end of it. You can indicate between the brackets what elements should be selected. For example: suppose you want to select the first and the fifth day of the week: use the vector c(1, 5) between the square brackets. For example, the code below selects the first and fifth element of poker_vector:
#   
#   poker_vector[c(1, 5)]
# Instructions
# 100 XP
# Assign the poker results of Tuesday, Wednesday and Thursday to the variable poker_midweek.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
poker_midweek <- poker_vector[c("Tuesday", "Wednesday", "Thursday")]