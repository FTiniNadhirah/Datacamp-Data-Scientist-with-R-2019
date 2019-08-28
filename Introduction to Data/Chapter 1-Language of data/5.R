# Discretize a different variable
# In this exercise, we'll create a categorical version of the num_char variable in the email50 dataset. num_char is the number of characters in an email, in thousands. This new variable will have two levels ("below median" and "at or above median") depending on whether an email has less than the median number of characters or equal to or more than that value.
# 
# The median marks the 50th percentile, or midpoint, of a distribution, so half of the emails should fall in one category and the other half in the other. You will learn more about the median and other measures of center in the next course in this series.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The email50 dataset is available in your workspace.
# 
# Find the median number of characters in emails, save the result as med_num_char.
# Using mutate(), create a new column called num_char_cat, which discretizes the num_char variable into "below median" or "at or above median". Assign the result to email50_fortified.
# Then, using count(), determine the number of emails in each level of num_char_cat. Evaluate whether these counts match the expected numbers.

# Calculate median number of characters: med_num_char
med_num_char <- median(email50$num_char)

# Create num_char_cat variable in email50
email50_fortified <- email50 %>%
  mutate(num_char_cat = ifelse(num_char < med_num_char, "below median", "at or above median"))

# Count emails in each category
email50_fortified %>%
  count(num_char_cat)