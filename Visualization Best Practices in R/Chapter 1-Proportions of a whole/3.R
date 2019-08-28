# The infamous P-I-E
# Intuitively, you can think about a pie chart as a stacked bar chart that has been 'wrapped' around some central axis. Conveniently, this intuition fits very well with how they are made in ggplot2.
# 
# Supplied is code to summarize our who_disease data into a dataframe containing three diseases: measles, mumps, and,other, along with their total number of cases in the data.
# 
# Your job is to turn the empty ggplot object into a stacked bar-chart, then into a pie-chart by using the transform coord_polar(theta = 'y').
# 
# Notice how I have set x = 1 in the aesthetics. This is because we only want one bar chart here. We'll learn about multiple stacked bar charts in the next lesson!
# 
# Instructions
# 100 XP
# Add a column geometry (geom_col()) to the supplied ggplot object.
# Switch to polar coordinates by adding coord_polar().

# Wrangle data into form we want. 
disease_counts <- who_disease %>%
  mutate(disease = ifelse(disease %in% c('measles', 'mumps'), disease, 'other')) %>%
  group_by(disease) %>%
  summarise(total_cases = sum(cases))

ggplot(disease_counts, aes(x = 1, y = total_cases, fill = disease)) +
  # Use a column geometry.
  geom_col() +
  # Change coordinate system to polar and set theta to 'y'.
  coord_polar(theta = "y")