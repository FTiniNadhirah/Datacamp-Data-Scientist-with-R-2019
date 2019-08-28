# Calculating total winnings (3)
# Based on the previous analysis, it looks like you had a mix of good and bad days. This is not what your ego expected, and you wonder if there may be a very tiny chance you have lost money over the week in total?
#   
#   A function that helps you to answer this question is sum(). It calculates the sum of all elements of a vector. For example, to calculate the total amount of money you have lost/won with poker you do:
#   
#   total_poker <- sum(poker_vector)
# Instructions
# 100 XP
# Calculate the total amount of money that you have won/lost with roulette and assign to the variable total_roulette.
# Now that you have the totals for roulette and poker, you can easily calculate total_week (which is the sum of all gains and losses of the week).
# Print out total_week.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)

# Total winnings with roulette
total_roulette <- sum(roulette_vector)  

# Total winnings overall
total_week <- total_poker + total_roulette

# Print out total_week
total_week