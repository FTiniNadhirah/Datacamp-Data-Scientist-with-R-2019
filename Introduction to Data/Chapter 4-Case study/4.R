# Create a scatterplot
# The bty_avg variable shows the average beauty rating of the professor by the six students who were asked to rate the attractiveness of these faculty. The score variable shows the average professor evaluation score, with 1 being very unsatisfactory and 5 being excellent.
# 
# Instructions
# 100 XP
# Use ggplot() to create a scatterplot displaying the relationship between these two variables.
# How would you describe the relationship apparent in this visualization?

# Scatterplot of score vs. bty_avg
ggplot(evals, aes(bty_avg, score)) +
  geom_point()