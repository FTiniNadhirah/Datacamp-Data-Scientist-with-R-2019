# A little arithmetic with matrices (2)
# Just like 2 * my_matrix multiplied every element of my_matrix by two, my_matrix1 * my_matrix2 creates a matrix where each element is the product of the corresponding elements in my_matrix1 and my_matrix2.
# 
# After looking at the result of the previous exercise, big boss Lucas points out that the ticket prices went up over time. He asks to redo the analysis based on the prices you can find in ticket_prices_matrix (source: imagination).
# 
# Those who are familiar with matrices should note that this is not the standard matrix multiplication for which you should use %*% in R.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Divide all_wars_matrix by ticket_prices_matrix to get the estimated number of US and non-US visitors for the six movies. Assign the result to visitors.
# From the visitors matrix, select the entire first column, representing the number of visitors in the US. Store this selection as us_visitors.
# Calculate the average number of US visitors; print out the result.
# all_wars_matrix and ticket_prices_matrix are available in your workspace
all_wars_matrix
ticket_prices_matrix

# Estimated number of visitors
visitors <- all_wars_matrix / ticket_prices_matrix

# US visitors
us_visitors <- visitors[,1]

# Average number of US visitors
average.non.us.visitor <- mean(us_visitors)
average.non.us.visitor