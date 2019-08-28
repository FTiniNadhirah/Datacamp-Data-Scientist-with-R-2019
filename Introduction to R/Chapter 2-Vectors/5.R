# Naming a vector (2)
# If you want to become a good statistician, you have to become lazy. (If you are already lazy, chances are high you are one of those exceptional, natural-born statistical talents.)
# 
# In the previous exercises you probably experienced that it is boring and frustrating to type and retype information such as the days of the week. However, when you look at it from a higher perspective, there is a more efficient way to do this, namely, to assign the days of the week vector to a variable!
#   
#   Just like you did with your poker and roulette returns, you can also create a variable that contains the days of the week. This way you can use and re-use it.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# A variable days_vector that contains the days of the week has already been created for you.
# Use days_vector to set the names of poker_vector and roulette_vector.

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# The variable days_vector
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign the names of the day to roulette_vector and poker_vector
names(poker_vector) <-   days_vector
names(roulette_vector) <- days_vector