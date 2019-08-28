# Exercise
# Exercise
# Reordering graphs
# The graph you built in the last exercise was readable, but it would be easier to understand it at a glance if it was ordered. Let's use some forcats functions to change the graph so it's ordered in descending order of average usefulness from left to right.
# 
# The dataset usefulness_by_platform has been loaded for you.
# 
# Instructions
# 100 XP
# Order learning_platform in the graph by avg_usefulness so that, from left to right, it goes from highest usefulness to lowest.
# 
# 
usefulness_by_platform %>%
  # reorder learning_platform by avg_usefulness
  mutate(learning_platform = fct_reorder(learning_platform, avg_usefulness)) %>%
  # reverse the order of learning_platform
  mutate(learning_platform = fct_rev(learning_platform)) %>%
  ggplot(aes(x = learning_platform, y = avg_usefulness)) + 
  geom_point() + 
  theme(axis.text.x = element_text(angle = 90, hjust = 1)) + 
  labs(x = "Learning Platform", y = "Percent finding at least somewhat useful") + 
  scale_y_continuous(labels = scales::percent)