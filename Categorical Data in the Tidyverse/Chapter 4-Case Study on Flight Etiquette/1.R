# Changing characters to factors
# While we'd sometimes like to dive straight into data visualization and modeling, we usually need to do some data tidying first. This chapter will walk you through the steps needed to recreate a FiveThirtyEight graphic from the original dataset, flying_etiquette. We'll start by limiting our dataset to only the respondents we're interested in and making some of our columns factors.
# 
# In the code, you'll see that we've put backticks around the column name. This is what you need to do if there are spaces in your column names! Normally, we change those to underscores so we don't have to do this, but in this case, we've kept it since we'll soon be graphing them.
# 
# Instructions
# 100 XP
# Change all character columns into factor columns.
# Remove people who responded "Never" to a question asking if they have flown before.

flying_etiquette %>%
  # Change characters to factors
  mutate_if(is.character, as.factor) %>%
  # Filter out those who have never flown on a plane
  filter(`How often do you travel by plane?` != "Never")