# Examining levels
# Let's continue to build our understanding of CurrentJobTitleSelect. In the previous exercise, we were able to get how many levels it has, but the other important part is what those levels are. Just like the last exercise, we'll use pull to get the values of CurrentJobTitleSelect from the dataset responses_as_factors. pull can be used interchangeably with $ as a way to extract a column as a vector from a table. For example, mean(mtcars$mpg) is the same as mean(mtcars %>% pull(mpg)) or mtcars %>% pull(mpg) %>% mean().
# 
# pull() the column CurrentJobTitleSelect.
# Get the values of the levels.

responses_as_factors %>%
  # pull CurrentJobTitleSelect
  pull(CurrentJobTitleSelect) %>%
  # get the values of the levels
  levels()