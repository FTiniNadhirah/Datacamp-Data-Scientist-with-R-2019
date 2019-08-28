# Take control!
#   In this exercise, you will combine everything that you've learned so far: relational operators, logical operators and control constructs. You'll need it all!
#   
#   In the editor, we've coded two values beforehand: li and fb, denoting the number of profile views your LinkedIn and Facebook profile had on the last day of recordings. Go through the instructions to create R code that generates a 'social media score', sms, based on the values of li and fb.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Finish the control-flow construct with the following behavior:
# 
# If both li and fb are 15 or higher, set sms equal to double the sum of li and fb.
# If both li and fb are strictly below 10, set sms equal to half the sum of li and fb.
# In all other cases, set sms equal to li + fb.
# Finally, print the resulting sms variable to the console.

# Variables related to your last day of recordings
li <- 15
fb <- 9

# Code the control-flow construct
if (li > 15 & fb > 15) {
  sms <- 2 * (li + fb)
} else if (li < 10 & fb < 10) {
  sms <- 0.5 * (li + fb)
} else {
  sms <- li + fb
}

# Print the resulting sms to the console
sms