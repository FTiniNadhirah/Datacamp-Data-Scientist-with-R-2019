# Fitting a regression with a categorical x
# You'll now fit a regression model with the categorical variable rank as the explanatory variable and interpret the values in the resulting regression table. Note here the rank "teaching" is treated as the baseline for comparison group for the "tenure track" and "tenured" groups.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Fit a linear regression model between score and rank, and then apply the wrapper function to model_score_4 that returns the regression table.
# 
# Fit regression model
model_score_4 <- lm(score ~ rank, data = evals)

# Get regression table
get_regression_table(model_score_4)

# 
# Based on the regression table, compute the 3 possible fitted values y^, which are the group means. Since "teaching" is the baseline for comparison group, the intercept is the mean score for the "teaching" group and ranktenure track/ranktenured are relative offsets to this baseline for the "tenure track"/"tenured" 

# Fit regression model
model_score_4 <- lm(score ~ rank, data = evals)

# Get regression table
get_regression_table(model_score_4)

# teaching mean
teaching_mean <- 4.28

# tenure track mean
tenure_track_mean <- 4.28 - 0.130

# tenured mean
tenured_mean <- 4.28 - 0.145