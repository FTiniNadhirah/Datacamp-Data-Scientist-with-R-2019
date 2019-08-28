# From sapply to vapply
# As highlighted before, vapply() can be considered a more robust version of sapply(), because you explicitly restrict the output of the function you want to apply. Converting your sapply() expressions in your own R scripts to vapply() expressions is therefore a good practice (and also a breeze!).
# 
# Instructions
# 100 XP
# Convert all the sapply() expressions on the right to their vapply() counterparts. Their results should be exactly the same; you're only adding robustness. You'll need the templates numeric(1) and logical(1).
# 

# temp is already defined in the workspace

# Convert to vapply() expression
vapply(temp, max, numeric(1))
## [1]  9 13  8  7  9  9  9
# Convert to vapply() expression
vapply(temp, function(x, y) { mean(x) > y }, y = 5, logical(1))