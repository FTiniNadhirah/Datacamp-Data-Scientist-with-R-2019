# Compare matrices
# R's ability to deal with different data structures for comparisons does not stop at vectors. Matrices and relational operators also work together seamlessly!
# 
# Instead of in vectors (as in the previous exercise), the LinkedIn and Facebook data is now stored in a matrix called views. The first row contains the LinkedIn information; the second row the Facebook information. The original vectors facebook and linkedin are still available as well.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Using the relational operators you've learned so far, try to discover the following:
#   
#   When were the views exactly equal to 13? Use the views matrix to return a logical matrix.
# For which days were the number of views less than or equal to 14? Again, have R return a logical matrix.

# The social data has been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)
views <- matrix(c(linkedin, facebook), nrow = 2, byrow = TRUE)

# When does views equal 13?
views == 13

# When is views less than or equal to 14?
views <= 14