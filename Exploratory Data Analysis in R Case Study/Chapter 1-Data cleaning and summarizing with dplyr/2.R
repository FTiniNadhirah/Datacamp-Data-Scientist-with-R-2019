# Adding a year column
# The next step of data cleaning is manipulating your variables (columns) to make them more informative.
# 
# In this case, you have a session column that is hard to interpret intuitively. But since the UN started voting in 1946, and holds one session per year, you can get the year of a UN resolution by adding 1945 to the session number.
# 
# Instructions
# 100 XP
# Use mutate() to add a year column by adding 1945 to the session column.

# Add another %>% step to add a year column
votes %>%
  filter(vote <= 3) %>%
  mutate(year = session + 1945)
