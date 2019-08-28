# Next, you break it
# In the editor on the right you'll find a possible solution to the previous exercise. The code loops over the linkedin vector and prints out different messages depending on the values of li.
# 
# In this exercise, you will use the break and next statements:
# 
# The break statement abandons the active loop: the remaining code in the loop is skipped and the loop is not iterated over anymore.
# The next statement skips the remainder of the code in the loop, but continues the iteration.
# Instructions
# 100 XP
# Instructions
# 100 XP
# Extend the for loop with two new, separate if tests in the editor as follows:
# 
# If the vector element's value exceeds 16, print out "This is ridiculous, I'm outta here!" and have R abandon the for loop (break).
# If the value is lower than 5, print out "This is too embarrassing!" and fast-forward to the next iteration (next).

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Extend the for loop
for (li in linkedin) {
  if (li > 10) {
    print("You're popular!")
  } else {
    print("Be more visible!")
  }
  
  # Add if statement with break
  if (li > 16) {
    print("This is ridiculous, I'm outta here!")
    break
  }
  
  # Add if statement with next
  if (li < 5) {
    print("This is too embarrassing!")
    next
  }
  
  print(li)
}