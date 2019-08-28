# Summarizing data
# Right now, our data is still in the format of one row per person per question. But for us to graph it, we'll want to change that so each row is a question with the summary information about the response to that question.
# 
# Instructions
# 100 XP
# Summarise the data set into two columns, the question (i.e. response_var), and a new column, perc_rude, the mean of the rude column for each question.
# Save it as rude_behaviors and then view your new dataset.


rude_behaviors <- gathered_data %>%
  mutate(response_var = str_replace(response_var, '.*rude to ', '')) %>%
  mutate(response_var = str_replace(response_var, 'on a plane', '')) %>%
  # Remove rows that are NA in the value column
  filter(!is.na(value)) %>%
  mutate(rude = if_else(value %in% c("No, not rude at all", "No, not at all rude"), 0, 1)) %>%
  # Group by response_var
  group_by(response_var) %>%
  # Create perc_rude, the percent considering each behavior rude
  summarise(perc_rude = mean(rude))

rude_behaviors