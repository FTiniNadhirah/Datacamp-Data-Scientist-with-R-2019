# Gathering columns into key-value pairs
# The most important function in tidyr is gather(). It should be used when you have columns that are not variables and you want to collapse them into key-value pairs.
# 
# The easiest way to visualize the effect of gather() is that it makes wide datasets long. As you saw in the video, running the following command on wide_df will make it long:
#   
#   gather(wide_df, my_key, my_val, -col)
# Experiment with this in the console before attempting the exercise.
# 
# Instructions
# 100 XP
# Apply the gather() function to bmi, saving the result to bmi_long. This will create two new columns:
#   year, containing as values what are currently column headers
# bmi_val, the actual BMI values
# View the first 20 rows of bmi_long.

# Apply gather() to bmi and save the result as bmi_long
bmi_long <- gather(bmi, year, bmi_val, -Country)

# View the first 20 rows of the result
head(bmi_long,20)