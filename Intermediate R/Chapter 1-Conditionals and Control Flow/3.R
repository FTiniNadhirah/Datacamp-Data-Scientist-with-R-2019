# Compare vectors
# You are already aware that R is very good with vectors. Without having to change anything about the syntax, R's relational operators also work on vectors.
# 
# Let's go back to the example that was started in the video. You want to figure out whether your activity on social media platforms have paid off and decide to look at your results for LinkedIn and Facebook. The sample code in the editor initializes the vectors linkedin and facebook. Each of the vectors contains the number of profile views your LinkedIn and Facebook profiles had over the last seven days.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Using relational operators, find a logical answer, i.e. TRUE or FALSE, for the following questions:
#   
#   On which days did the number of LinkedIn profile views exceed 15?
#   When was your LinkedIn profile viewed only 5 times or fewer?
#   When was your LinkedIn profile visited more often than your Facebook profile?

# The linkedin and facebook vectors have already been created for you
linkedin <- c(16, 9, 13, 5, 2, 17, 14)
facebook <- c(17, 7, 5, 16, 8, 13, 14)

# Popular days
linkedin > 15
## [1]  TRUE FALSE FALSE FALSE FALSE  TRUE FALSE
# Quiet days
linkedin <= 5
## [1] FALSE FALSE FALSE  TRUE  TRUE FALSE FALSE
# LinkedIn more popular than Facebook
linkedin > facebook