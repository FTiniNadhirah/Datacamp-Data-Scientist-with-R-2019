# Identify variable types
# It's always useful to start your exploration of a dataset by identifying variable types. The results from this exercise will help you design appropriate visualizations and calculate useful summary statistics later in your analysis.
# 
# Instructions
# 100 XP
# Explore the evals data once again with the following goals in mind: (1) Identify each variable as numerical or categorical. (2) If numerical, determine if it is discrete or continuous. (3) If categorical, determine if it is ordinal or not.
# We've created a vector of variable names in the editor called cat_vars. To test your understanding of the data, remove the names of any variables that are not categorical.

# Inspect variable types

glimpse(evals)
# Remove non-factor variables from the vector below
cat_vars <- c("rank", "ethnicity", "gender", "language",
              "cls_level", "cls_profs", "cls_credits",
              "pic_outfit", "pic_color")