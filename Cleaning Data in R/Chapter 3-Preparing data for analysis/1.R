# Types of variables in R
# As in other programming languages, R is capable of storing data in many different formats, most of which you've probably seen by now.
# 
# Loosely speaking, the class() function tells you what type of object you're working with. (There are subtle differences between the class, type, and mode of an object, but these distinctions are beyond the scope of this course.)
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Change the argument of each call to the class() function so it evaluates to the following (in order):
#   
#   "character"
# "numeric"
# "integer"
# "factor"
# "logical"
# Add or remove quotes, add an L to numerics to make them integers and use the factor() function when appropriate to accomplish this!

# Make this evaluate to "character"
class(as.character('true'))

# Make this evaluate to "numeric"
class(as.numeric("8484.00"))

# Make this evaluate to "integer"
class(as.integer("99"))

# Make this evaluate to "factor"
class(as.factor("factor"))
