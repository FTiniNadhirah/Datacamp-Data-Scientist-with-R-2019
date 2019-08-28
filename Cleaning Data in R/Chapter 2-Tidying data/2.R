# Spreading key-value pairs into columns
# The opposite of gather() is spread(), which takes key-values pairs and spreads them across multiple columns. This is useful when values in a column should actually be column names (i.e. variables). It can also make data more compact and easier to read.
# 
# The easiest way to visualize the effect of spread() is that it makes long datasets wide. As you saw in the video, running the following command will make long_df wide:
#   
#   spread(long_df, my_key, my_val)
# Experiment with this in the console before attempting the exercise.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use spread() to reverse the operation that you performed in the last exercise with gather(). In other words, make bmi_long wide again, saving the result to bmi_wide.
# View the head of bmi_wide.

# Apply spread() to bmi_long
bmi_wide <- spread(bmi_long, year, bmi_val)

# View the head of bmi_wide
head(bmi_wide)