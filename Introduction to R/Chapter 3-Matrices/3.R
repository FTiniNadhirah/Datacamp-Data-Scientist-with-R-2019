# Naming a matrix
# To help you remember what is stored in star_wars_matrix, you would like to add the names of the movies for the rows. Not only does this help you to read the data, but it is also useful to select certain elements from the matrix.
# 
# Similar to vectors, you can add names for the rows and the columns of a matrix
# 
# rownames(my_matrix) <- row_names_vector
# colnames(my_matrix) <- col_names_vector
# We went ahead and prepared two vectors for you: region, and titles. You will need these vectors to name the columns and rows of star_wars_matrix, respectively.
# 
# Instructions
# 100 XP
# Use colnames() to name the columns of star_wars_matrix with the region vector.
# Use rownames() to name the rows of star_wars_matrix with the titles vector.
# Print out star_wars_matrix to see the result of your work.

# Box office Star Wars (in millions!)
new_hope <- c(460.998, 314.4)
empire_strikes <- c(290.475, 247.900)
return_jedi <- c(309.306, 165.8)

# Construct matrix
star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)

# Vectors region and titles, used for naming
region <- c("US", "non-US")
titles <- c("A New Hope", "The Empire Strikes Back", "Return of the Jedi")

# Name the columns with region
colnames(star_wars_matrix)<- region

# Name the rows with titles
rownames(star_wars_matrix) <-titles

# Print out star_wars_matrix
star_wars_matrix