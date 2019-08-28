# Use vapply (2)
# So far you've seen that vapply() mimics the behavior of sapply() if everything goes according to plan. But what if it doesn't?
#   
#   In the video, Filip showed you that there are cases where the structure of the output of the function you want to apply, FUN, does not correspond to the template you specify in FUN.VALUE. In that case, vapply() will throw an error that informs you about the misalignment between expected and actual output.
# 
# Instructions
# 100 XP
# Inspect the code on the right and try to run it. If you haven't changed anything, an error should pop up. That's because vapply() still expects basics() to return a vector of length 3. The error message gives you an indication of what's wrong.
# Try to fix the error by editing the vapply() command.

# temp is already available in the workspace

# Definition of the basics() function
basics <- function(x) {
  c(min = min(x), mean = mean(x), median = median(x), max = max(x))
}

# Fix the error:
vapply(temp, basics, numeric(4))