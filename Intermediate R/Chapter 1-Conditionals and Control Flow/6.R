# & and | (2)
# Like relational operators, logical operators work perfectly fine with vectors and matrices.
# 
# Both the vectors linkedin and facebook are available again. Also a matrix - views - has been defined; its first and second row correspond to the linkedin and facebook vectors, respectively. Ready for some advanced queries to gain more insights into your social outreach?
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# When did LinkedIn views exceed 10 and did Facebook views fail to reach 10 for a particular day? Use the linkedin and facebook vectors.
# When were one or both of your LinkedIn and Facebook profiles visited at least 12 times?
#   When is the views matrix equal to a number between 11 and 14, excluding 11 and including 14?
# The social data (linkedin, facebook, views) has been created for you

linkedin > 10 & facebook < 10

# When were one or both visited at least 12 times?
linkedin >= 12 | facebook >= 12

# When is views between 11 (exclusive) and 14 (inclusive)?
views > 11 & views <= 14
