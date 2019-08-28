# Vector selection: the good times (4)
# Another way to tackle the previous exercise is by using the names of the vector elements (Monday, Tuesday, ...) instead of their numeric positions. For example,
# 
# poker_vector["Monday"]
# will select the first element of poker_vector since "Monday" is the name of that first element.
# 
# Just like you did in the previous exercise with numerics, you can also use the element names to select multiple elements, for example:
#   
#   poker_vector[c("Monday","Tuesday")]
# Instructions
# 100 XP
# Select the first three elements in poker_vector by using their names: "Monday", "Tuesday" and "Wednesday". Assign the result of the selection to poker_start.
# Calculate the average of the values in poker_start with the mean() function. Simply print out the result so you can inspect it.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Select poker results for Monday, Tuesday and Wednesday
poker_start <-poker_vector[c("Monday","Tuesday","Wednesday")]

# Calculate the average of the elements in poker_start
mean_pocker<-mean(poker_start)
mean_pocker