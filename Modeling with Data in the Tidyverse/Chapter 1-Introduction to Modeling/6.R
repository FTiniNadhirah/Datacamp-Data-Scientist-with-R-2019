# Correlation between teaching and "beauty" scores
# Let's numerically summarize the relationship between teaching score and beauty score bty_avg using the correlation coefficient. Based on this, what can you say about the relationship between these two variables?
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Compute the correlation coefficient of score and bty_avg.

# Compute correlation
evals %>%
  summarize(correlation = cor(score, bty_avg))