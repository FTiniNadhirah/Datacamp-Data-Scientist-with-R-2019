# Selecting elements from a list
# Your list will often be built out of numerous elements and components. Therefore, getting a single element, multiple elements, or a component out of it is not always straightforward.
# 
# One way to select a component is using the numbered position of that component. For example, to "grab" the first component of shining_list you type
# 
# shining_list[[1]]
# A quick way to check this out is typing it in the console. Important to remember: to select elements from vectors, you use single square brackets: [ ]. Don't mix them up!
# 
# You can also refer to the names of the components, with [[ ]] or with the $ sign. Both will select the data frame representing the reviews:
# 
# shining_list[["reviews"]]
# shining_list$reviews
# Besides selecting components, you often need to select specific elements out of these components. For example, with shining_list[[2]][1] you select from the second component, actors (shining_list[[2]]), the first element ([1]). When you type this in the console, you will see the answer is Jack Nicholson.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Select from shining_list the vector representing the actors. Simply print out this vector.
# Select from shining_list the second element in the vector representing the actors. Do a printout like before.

# shining_list is already pre-loaded in the workspace

# Print out the vector representing the actors
shining_list[["actors"]]

# Print the second element of the vector representing the actors
shining_list$actors[[2]]
