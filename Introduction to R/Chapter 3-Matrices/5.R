# Adding a column for the Worldwide box office
# In the previous exercise you calculated the vector that contained the worldwide box office receipt for each of the three Star Wars movies. However, this vector is not yet part of star_wars_matrix.
# 
# You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices and/or vectors together by column. For example:
#   
#   big_matrix <- cbind(matrix1, matrix2, vector1 ...)
# Instructions
# 100 XP
# Add worldwide_vector as a new column to the star_wars_matrix and assign the result to all_wars_matrix. Use the cbind() function.

# Construct star_wars_matrix
box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE,
                           dimnames = list(c("A New Hope", "The Empire Strikes Back", "Return of the Jedi"), 
                                           c("US", "non-US")))

# The worldwide box office figures
worldwide_vector <- rowSums(star_wars_matrix)

# Bind the new variable worldwide_vector as a column to star_wars_matrix
all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
all_wars_matrix