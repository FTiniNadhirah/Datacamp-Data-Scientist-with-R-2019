# Add an else
#   You can only use an else statement in combination with an if statement. The else statement does not require a condition; its corresponding code is simply run if all of the preceding conditions in the control structure are FALSE. Here's a recipe for its usage:
# 
# if (condition) {
#   expr1
# } else {
#   expr2
# }
# It's important that the else keyword comes on the same line as the closing bracket of the if part!
#     
#     Both if statements that you coded in the previous exercises are already available in the editor. It's now up to you to extend them with the appropriate else statements!
# 
# Instructions
# 100 XP
# Add an else statement to both control structures, such that
# 
# "Unknown medium" gets printed out to the console when the if-condition on medium does not hold.
# R prints out "Try to be more visible!" when the if-condition on num_views is not met.

# Variables related to your last day of recordings
medium <- "LinkedIn"
num_views <- 14

# Control structure for medium
if (medium == "LinkedIn") {
  print("Showing LinkedIn information")
} else {
  print("Unknown medium")
}

# Control structure for num_views
if (num_views > 15) {
  print("You're popular!")
} else {
  print("Try to be more visible!")
}