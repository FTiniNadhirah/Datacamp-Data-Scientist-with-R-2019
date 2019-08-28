# Write a while loop
# Let's get you started with building a while loop from the ground up. Have another look at its recipe:
# 
# while (condition) {
#   expr
# }
# Remember that the condition part of this recipe should become FALSE at some point during the execution. Otherwise, the while loop will go on indefinitely. If your session expires when you run your code, check the body of your while loop carefully.
# 
# Have a look at the code on the right; it initializes the speed variables and already provides a while loop template to get you started.
# 
# Instructions
# 100 XP
# Code a while loop with the following characteristics:
# 
# The condition of the while loop should check if speed is higher than 30.
# Inside the body of the while loop, print out "Slow down!".
# Inside the body of the while loop, decrease the speed by 7 units and assign this new value to speed again. This step is crucial; otherwise your while loop will never stop and your session will expire.

# Initialize the speed variable
speed <- 64

# Code the while loop
while (speed > 30) {
  print("Slow down!")
  speed <- speed - 7
}
# Print out the speed variable
speed