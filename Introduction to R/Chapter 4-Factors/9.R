# Comparing ordered factors
# Having a bad day at work, 'data analyst number two' enters your office and starts complaining that 'data analyst number five' is slowing down the entire project. Since you know that 'data analyst number two' has the reputation of being a smarty-pants, you first decide to check if his statement is true.
# 
# The fact that factor_speed_vector is now ordered enables us to compare different elements (the data analysts in this case). You can simply do this by using the well-known operators.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use [2] to select from factor_speed_vector the factor value for the second data analyst. Store it as da2.
# Use [5] to select the factor_speed_vector factor value for the fifth data analyst. Store it as da5.
# Check if da2 is greater than da5; simply print out the result. Remember that you can use the > operator to check whether one element is larger than the other.
# Create factor_speed_vector
speed_vector <- c("medium", "slow", "slow", "medium", "fast")
factor_speed_vector <- factor(speed_vector, ordered = TRUE, levels = c("slow", "medium", "fast"))

# Factor value for second data analyst
da2 <- factor_speed_vector[2]

# Factor value for fifth data analyst
da5 <- factor_speed_vector[5]

# Is data analyst 2 faster than data analyst 5?
compare <- da2 > da5
compare