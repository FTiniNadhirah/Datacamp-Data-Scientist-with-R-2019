# Ordered factors
# Since "Male" and "Female" are unordered (or nominal) factor levels, R returns a warning message, telling you that the greater than operator is not meaningful. As seen before, R attaches an equal value to the levels for such factors.
# 
# But this is not always the case! Sometimes you will also deal with factors that do have a natural ordering between its categories. If this is the case, we have to make sure that we pass this information to R...
# 
# Let us say that you are leading a research team of five data analysts and that you want to evaluate their performance. To do this, you track their speed, evaluate each analyst as "slow", "medium" or "fast", and save the results in speed_vector.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# As a first step, assign speed_vector a vector with 5 entries, one for each analyst. Each entry should be either "slow", "medium", or "fast". Use the list below:
#   
#   Analyst 1 is medium,
# Analyst 2 is slow,
# Analyst 3 is slow,
# Analyst 4 is medium and
# Analyst 5 is fast.
# No need to specify these are factors yet.
# 
# Create speed_vector
speed_vector <- c("medium","slow","slow","medium","fast")