# Loop over a vector
# In the previous video, Filip told you about two different strategies for using the for loop. To refresh your memory, consider the following loops that are equivalent in R:
#   
#   primes <- c(2, 3, 5, 7, 11, 13)
# 
# # loop version 1
# for (p in primes) {
#   print(p)
# }
# 
# # loop version 2
# for (i in 1:length(primes)) {
#   print(primes[i])
# }
# Remember our linkedin vector? It's a vector that contains the number of views your LinkedIn profile had in the last seven days. The linkedin vector has already been defined in the editor on the right so that you can fully focus on the instructions!
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Write a for loop that iterates over all the elements of linkedin and prints out every element separately. Do this in two ways: using the loop version 1 and the loop version 2 in the example code above.
# 

# The linkedin vector has already been defined for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)

# Loop version 1
for (p in linkedin) {
  print(p)
}

# Loop version 2
for (i in 1:length(linkedin)) {
  print(linkedin[i])
}