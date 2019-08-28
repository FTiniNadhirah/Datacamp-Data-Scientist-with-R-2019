# Build a while loop from scratch
# The previous exercises guided you through developing a pretty advanced while loop, containing a break statement and different messages and updates as determined by control flow constructs. If you manage to solve this comprehensive exercise using a while loop, you're totally ready for the next topic: the for loop.
# 
# Instructions
# 100 XP
# Finish the while loop so that it:
# 
# prints out the triple of i, so 3 * i, at each run.
# is abandoned with a break if the triple of i is divisible by 8, but still prints out this triple before breaking.

# Initialize i as 1 
i <- 1

# Code the while loop
while (i <= 10) {
  print(3 * i)
  if ( (3 * i) %% 8 == 0 ) {
    print(3 * i)
    break
  }
  i <- i + 1
}