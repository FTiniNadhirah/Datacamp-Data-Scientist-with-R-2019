# EDA of relationship of score and rank
# Let's perform an EDA of the relationship between an instructor's score and their rank. You'll both visualize this relationship and compute summary statistics for each level of rank: teaching, tenure track, and tenured.
# 
# Instructions 1/2
# 50 XP
# 
# Write the code to create a boxplot of the relationship between teaching score and rank.
# 
ggplot(evals, aes(x = rank, y = score)) +
  geom_boxplot()+
  labs(x = "rank", y = "score") 
# 
# For each unique value in rank:
# Count the number of observations in each group
# Find the mean and standard deviation of score
# 
evals %>%
  group_by(rank) %>%
  summarize(n = n(), mean_score = mean(score), sd_score = sd(score)) 
