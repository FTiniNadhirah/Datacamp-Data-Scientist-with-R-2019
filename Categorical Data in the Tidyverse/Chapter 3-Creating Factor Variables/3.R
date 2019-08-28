# Creating an initial plot
# In the previous lesson, we looked at the usefulness of different learning platforms for data science. We created a faceted plot, with one small plot for each platform. Let's try making and refining a plot that has all the data in one graph.
# 
# Instructions 1/3
# 50 XP
# 1
# 2
# 3
# Using the dataset learning_platform_usefulness, change usefulness to equal 0 if someone answered "Not Useful" and 1 otherwise.
# 
#
learning_platform_usefulness %>%
  # If usefulness is "Not Useful", make 0, else 1 
  mutate(usefulness = if_else(usefulness == "Not Useful", 0, 1))
# Group the data by each platform.
# Create a new column, avg_usefulness, the mean usefulness of each platform.
# Save the result as a new dataset, usefulness_by_platform
# 
usefulness_by_platform <- learning_platform_usefulness %>%
  # If usefulness is "Not Useful", make 0, else 1 
  mutate(usefulness = if_else(usefulness == "Not Useful", 0, 1)) %>%
  # Group by learning platform 
  group_by(learning_platform) %>%
  # Summarize the mean usefulness for each platform
  summarize(avg_usefulness = mean(usefulness))
# 
# Create a scatter plot of avg_usefulness by learning_platform, using the dataset you created, usefulness_by_platform.
# 
# Make a scatter plot of average usefulness by learning platform 
ggplot(usefulness_by_platform, aes(x = learning_platform, y = avg_usefulness)) + 
  geom_point()
