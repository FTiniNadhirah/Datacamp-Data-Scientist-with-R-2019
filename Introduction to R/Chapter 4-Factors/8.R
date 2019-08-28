# Ordered factors (2)
# speed_vector should be converted to an ordinal factor since its categories have a natural ordering. By default, the function factor() transforms speed_vector into an unordered factor. To create an ordered factor, you have to add two additional arguments: ordered and levels.
# 
# factor(some_vector,
#        ordered = TRUE,
#        levels = c("lev1", "lev2" ...))
# By setting the argument ordered to TRUE in the function factor(), you indicate that the factor is ordered. With the argument levels you give the values of the factor in the correct order.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# From speed_vector, create an ordered factor vector: factor_speed_vector. Set ordered to TRUE, and set levels to c("slow", "medium", "fast").

# Create speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")

# Convert speed_vector to ordered factor vector
factor_speed_vector <- factor(speed_vector, ordered=TRUE,levels=c("slow","medium","fast") ) 

# Print factor_speed_vector
factor_speed_vector
summary(factor_speed_vector)