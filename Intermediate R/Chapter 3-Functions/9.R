# R you functional?
#   Now that you've acquired some skills in defining functions with different types of arguments and return values, you should try to create more advanced functions. As you've noticed in the previous exercises, it's perfectly possible to add control-flow constructs, loops and even other functions to your function body.
# 
# Remember our social media example? The vectors linkedin and facebook are already defined in the workspace so you can get your hands dirty straight away. As a first step, you will be writing a function that can interpret a single value of this vector. In the next exercise, you will write another function that can handle an entire vector at once.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Finish the function definition for interpret(), that interprets the number of profile views on a single day:
# The function takes one argument, num_views.
# If num_views is greater than 15, the function prints out "You're popular!" to the console and returns num_views.
# Else, the function prints out "Try to be more visible!" and returns 0.
# Finally, call the interpret() function twice: on the first value of the linkedin vector and on the second element of the facebook vector.

# The linkedin and facebook vectors have already been created for you

# Define the interpret function
interpret <- function(num_views) {
  if (num_views > 15) {
    print("You're popular!")
    return(num_views)
  } else {
    print("Try to be more visible!")
    return(0)
  }
}

# Call the interpret function twice
interpret(linkedin[1])
interpret(facebook[2])