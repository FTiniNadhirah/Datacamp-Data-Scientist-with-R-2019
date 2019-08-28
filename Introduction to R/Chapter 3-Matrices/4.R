# Calculating the worldwide box office
# The single most important thing for a movie in order to become an instant legend in Tinseltown is its worldwide box office figures.
# 
# To calculate the total box office revenue for the three Star Wars movies, you have to take the sum of the US revenue column and the non-US revenue column.
# 
# In R, the function rowSums() conveniently calculates the totals for each row of a matrix. This function creates a new vector:
#   
#   rowSums(my_matrix)
# Instructions
# 100 XP
# Calculate the worldwide box office figures for the three movies and put these in the vector named worldwide_vector.

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# Calculate worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)