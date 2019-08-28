# Create a scatterplot, with an added layer
# Suppose you are interested in evaluating how the relationship between a professor's attractiveness and their evaluation score varies across different class types (small, midsize, and large).
# 
# Instructions
# 100 XP
# Recreate your visualization from the previous exercise, but this time coloring the points by class type.
# How would you describe the relationship apparent in this visualization?

# Scatterplot of score vs. bty_avg colored by cls_type
ggplot(evals, aes(bty_avg, score, color = cls_type)) +
  geom_point()