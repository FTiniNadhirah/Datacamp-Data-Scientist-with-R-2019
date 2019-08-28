# What's a factor and why would you use it? (2)
# To create factors in R, you make use of the function factor(). First thing that you have to do is create a vector that contains all the observations that belong to a limited number of categories. For example, sex_vector contains the sex of 5 different individuals:
# 
# sex_vector <- c("Male","Female","Female","Male","Male")
# It is clear that there are two categories, or in R-terms 'factor levels', at work here: "Male" and "Female".
# 
# The function factor() will encode the vector as a factor:
# 
# factor_sex_vector <- factor(sex_vector)
# Instructions
# 100 XP
# Instructions
# 100 XP
# Convert the character vector sex_vector to a factor with factor() and assign the result to factor_sex_vector
# Print out factor_sex_vector and assert that R prints out the factor levels below the actual values.

# Sex vector
sex_vector <- c("Male", "Female", "Female", "Male", "Male")

# Convert sex_vector to a factor
factor_sex_vector <-factor(sex_vector)

# Print out factor_sex_vector
factor_sex_vector