# Loop over a list
# Looping over a list is just as easy and convenient as looping over a vector. There are again two different approaches here:
#   
#   primes_list <- list(2, 3, 5, 7, 11, 13)
# 
# # loop version 1
# for (p in primes_list) {
#   print(p)
# }
# 
# # loop version 2
# for (i in 1:length(primes_list)) {
#   print(primes_list[[i]])
# }
# Notice that you need double square brackets - [[ ]] - to select the list elements in loop version 2.
# 
# Suppose you have a list of all sorts of information on New York City: its population size, the names of the boroughs, and whether it is the capital of the United States. We've already prepared a list nyc with all this information in the editor (source: Wikipedia).
# 
# Instructions
# 100 XP
# As in the previous exercise, loop over the nyc list in two different ways to print its elements:
# 
# Loop directly over the nyc list (loop version 1).
# Define a looping index and do subsetting using double brackets (loop version 2).

# The nyc list is already specified
nyc <- list(pop = 8405837, 
            boroughs = c("Manhattan", "Bronx", "Brooklyn", "Queens", "Staten Island"), 
            capital = FALSE)

# Loop version 1
for (p in nyc) {
  print(p)
}

for (i in 1:length(nyc)) {
  print(nyc[[i]])
}