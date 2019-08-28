# Adding a row
# Just like every action has a reaction, every cbind() has an rbind(). (We admit, we are pretty bad with metaphors.)
# 
# Your R workspace, where all variables you defined 'live' (check out what a workspace is), has already been initialized and contains two matrices:
#   
#   star_wars_matrix that we have used all along, with data on the original trilogy,
# star_wars_matrix2, with similar data for the prequels trilogy.
# Type the name of these matrices in the console and hit Enter if you want to have a closer look. If you want to check out the contents of the workspace, you can type ls() in the console.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Use rbind() to paste together star_wars_matrix and star_wars_matrix2, in this order. Assign the resulting matrix to all_wars_matrix.

# star_wars_matrix and star_wars_matrix2 are available in your workspace
star_wars_matrix  
star_wars_matrix2 

# Combine both Star Wars trilogies in one matrix
all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2) 