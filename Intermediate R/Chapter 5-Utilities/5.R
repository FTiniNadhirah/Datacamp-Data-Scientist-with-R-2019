# Beat Gauss using R
# There is a popular story about young Gauss. As a pupil, he had a lazy teacher who wanted to keep the classroom busy by having them add up the numbers 1 to 100. Gauss came up with an answer almost instantaneously, 5050. On the spot, he had developed a formula for calculating the sum of an arithmetic series. There are more general formulas for calculating the sum of an arithmetic series with different starting values and increments. Instead of deriving such a formula, why not use R to calculate the sum of a sequence?
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Using the function seq(), create a sequence that ranges from 1 to 500 in increments of 3. Assign the resulting vector to a variable seq1.
# Again with the function seq(), create a sequence that ranges from 1200 to 900 in increments of -7. Assign it to a variable seq2.
# Calculate the total sum of the sequences, either by using the sum() function twice and adding the two results, or by first concatenating the sequences and then using the sum() function once. Print the result to the console.

# Create first sequence: seq1
seq1 <- seq(1, 500, by = 3)

# Create second sequence: seq2
seq2 <- seq(1200, 900, by = -7)

# Calculate total sum of the sequences
sum(c(seq1, seq2))