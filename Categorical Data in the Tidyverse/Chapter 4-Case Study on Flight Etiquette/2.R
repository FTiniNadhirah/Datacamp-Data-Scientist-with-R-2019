# Tidying data
# Let's continue our work from the previous exercise. Now that we've got the population we want, let's reformat our data to get it in shape for plotting. The graph only looks at flier's opinions about whether different behaviors are rude, so we'll first want to select only those columns. Then we can reshape our data to prepare us for the next lesson where we'll get some summary data from different questions.
# 
# Instructions
# 100 XP
# Select columns where "rude" is in the column name.
# Change the dataset from "wide" to "long", with the variable names in a column called "response_var" and the values in a column called "value."

gathered_data <- flying_etiquette %>%
  mutate_if(is.character, as.factor) %>%
  filter(`How often do you travel by plane?` != "Never") %>%
  # Select columns containing "rude"
  select(contains("rude")) %>%
  # Change format from wide to long
  gather(response_var, value)