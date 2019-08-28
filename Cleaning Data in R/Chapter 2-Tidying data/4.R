# Uniting columns
# The opposite of separate() is unite(), which takes multiple columns and pastes them together. By default, the contents of the columns will be separated by underscores in the new column, but this behavior can be altered via the sep argument.
# 
# We've loaded the treatments data into your workspace again, but this time the year_mo column has been separated into year and month. The original column can be recreated by putting year and month back together:
# 
# unite(treatments, year_mo, year, month)
# Experiment with this in the console before attempting the exercise.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# In the last exercise, you separated the Country_ISO column of the bmi_cc dataset into two columns (Country and ISO) and saved the result to bmi_cc_clean. Now you're going to put the columns back together!
#   
#   Apply the unite() function to bmi_cc_clean
# Reunite the Country and ISO columns into a single column called Country_ISO
# Separate each country name and code with a dash (-)
# Save the result as bmi_cc
# View the head of the result.

# Apply unite() to bmi_cc_clean
bmi_cc <- unite(bmi_cc_clean, Country_ISO, Country, ISO, sep = "-")

# View the head of the result
head(bmi_cc)