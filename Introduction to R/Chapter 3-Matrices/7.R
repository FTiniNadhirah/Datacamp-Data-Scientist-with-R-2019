# The total box office revenue for the entire saga
# Just like cbind() has rbind(), colSums() has rowSums(). Your R workspace already contains the all_wars_matrix that you constructed in the previous exercise; type all_wars_matrix to have another look. Let's now calculate the total box office revenue for the entire saga.
# 
# Instructions
# 100 XP
# Calculate the total revenue for the US and the non-US region and assign total_revenue_vector. You can use the colSums() function.
# Print out total_revenue_vector to have a look at the results.
# all_wars_matrix is available in your workspace
all_wars_matrix

# Total revenue for US and non-US
total_revenue_vector <- colSums(all_wars_matrix)

# Print out total_revenue_vector
total_revenue_vector