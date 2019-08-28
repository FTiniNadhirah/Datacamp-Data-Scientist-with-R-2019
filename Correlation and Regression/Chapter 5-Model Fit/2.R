# Assessing simple linear model fit
# Recall that the coefficient of determination (R2), can be computed as
# R2=1???SSESST=1???Var(e)Var(y),
# where e is the vector of residuals and y is the response variable. This gives us the interpretation of R2 as the percentage of the variability in the response that is explained by the model, since the residuals are the part of that variability that remains unexplained by the model.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# The bdims_tidy data frame is the result of augment()-ing the bdims data frame with the mod for wgt as a function of hgt.
# 
# Use the summary() function to view the full results of mod.
# Use the bdims_tidy data frame to compute the R2 of mod manually using the formula above, by computing the ratio of the variance of the residuals to the variance of the response variable.

# View model summary
summary(mod)

# Compute R-squared
bdims_tidy %>%
  summarize(var_y = var(wgt), var_e = var(.resid)) %>%
  mutate(R_squared =  1 - (var_e/var_y))