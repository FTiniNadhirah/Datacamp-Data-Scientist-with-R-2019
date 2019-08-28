# Grouping and reshaping similar columns
# In this lesson, we saw how some of the columns in the Kaggle data science survey dataset were tied together, such as columns each addressing the frequency of different work challenges. We usually want to look at those variables together, but first, we need to find them and change them into a format that's easier to use. Let's try the process out with the questions around how useful the survey respondents found different platforms for learning.
# 
# The dataset multiple_choice_responses has been loaded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Select only the columns with LearningPlatformUsefulness in the name.
# Change the data from wide to long format with two columns, learning_platform and usefulness.
# Remove rows where usefulness is NA.
# Remove "LearningPlatformUsefulness" from each string in learning_platform.
# 
learning_platform_usefulness <- multiple_choice_responses %>%
  # select columns with LearningPlatformUsefulness in title
  select(contains("LearningPlatformUsefulness")) %>%
  # change data from wide to long
  gather(learning_platform, usefulness) %>%
  # remove rows where usefulness is NA
  filter(!is.na(usefulness)) %>%
  # remove "LearningPlatformUsefulness" from each string in learning_platform 
  mutate(learning_platform = str_replace(learning_platform, "LearningPlatformUsefulness", ""))