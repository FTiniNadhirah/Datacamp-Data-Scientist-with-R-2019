# Find the error
# We went ahead and included some code on the right, but there's still an error. Can you trace it and fix it?
# 
# In times of despair, help with functions such as sum() and rev() are a single command away; simply use ?sum and ?rev in the console.
# 
# Instructions
# 100 XP
# Fix the error by including code on the last line. Remember: you want to call mean() only once!

# Don't edit these two lines
vec1 <- c(1.5, 2.5, 8.4, 3.7, 6.3)
vec2 <- rev(vec1)

# Fix the error
# mean(abs(vec1), abs(vec2))

mean(c(abs(vec1), abs(vec2)))