# Data Utilities
# R features a bunch of functions to juggle around with data structures::
#   
#   seq(): Generate sequences, by specifying the from, to, and by arguments.
# rep(): Replicate elements of vectors and lists.
# sort(): Sort a vector in ascending order. Works on numerics, but also on character strings and logicals.
# rev(): Reverse the elements in a data structures for which reversal is defined.
# str(): Display the structure of any R object.
# append(): Merge vectors or lists.
# is.*(): Check for the class of an R object.
# as.*(): Convert an R object from one class to another.
# unlist(): Flatten (possibly embedded) lists to produce a vector.
# Remember the social media profile views data? Your LinkedIn and Facebook view counts for the last seven days are already defined as lists on the right.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Convert both linkedin and facebook lists to a vector, and store them as li_vec and fb_vec respectively.
# Next, append fb_vec to the li_vec (Facebook data comes last). Save the result as social_vec.
# Finally, sort social_vec from high to low. Print the resulting vector.

# The linkedin and facebook lists have already been created for you
linkedin <- list(16, 9, 13, 5, 2, 17, 14)
facebook <- list(17, 7, 5, 16, 8, 13, 14)

# Convert linkedin and facebook to a vector: li_vec and fb_vec
# unlist(): Flatten (possibly embedded) lists to produce a vector.
li_vec <- unlist(linkedin)
fb_vec <- unlist(facebook)

# Append fb_vec to li_vec: social_vec
# append(): Merge vectors or lists.
social_vec <- append(li_vec, fb_vec)

# Sort social_vec
sort(social_vec, decreasing = TRUE)