# Data Integrity
# In the process of exploring a dataset, you'll sometimes come across something that will lead you to question how the data were compiled. For example, the variable num_char contains the number of characters in the email, in thousands, so it could take decimal values, but it certainly shouldn't take negative values.
# 
# You can formulate a test to ensure this variable is behaving as we expect:
#   
#   email$num_char < 0
# If you run this code at the console, you'll get a long vector of logical values indicating for each case in the dataset whether that condition is TRUE. Here, the first 1000 values all appear to be FALSE. To verify that all of the cases indeed have non-negative values for num_char, we can take the sum of this vector:
# 
# sum(email$num_char < 0)
# This is a handy shortcut. When you do arithmetic on logical values, R treats TRUE as 1 and FALSE as 0. Since the sum over the whole vector is zero, you learn that every case in the dataset took a value of FALSE in the test. That is, the num_char column is behaving as we expect and taking only non-negative values.
# 
# Instructions
# 100 XP
# Consider the variables image and attach. You can read about them with ?email, but the help file is ambiguous: do attached images count as attached files in this dataset?
# 
# Design a simple test to determine if images count as attached files. This involves creating a logical condition to compare the values of the two variables, then using sum() to assess every case in the dataset. Recall that the logical operators are < for less than, <= for less than or equal to, > for greater than, >= for greater than or equal to, and == for 
# Test if images count as attachments
sum(email$image > email$attach)
