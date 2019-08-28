# Fitted values and residuals
# Once you have fit a regression model, you are often interested in the fitted values (y^i) and the residuals (ei), where i indexes the observations. Recall that:
#   
#   ei=yi???y^i
# The least squares fitting procedure guarantees that the mean of the residuals is zero (n.b., numerical instability may result in the computed values not being exactly zero). At the same time, the mean of the fitted values must equal the mean of the response variable.
# 
# In this exercise, we will confirm these two mathematical facts by accessing the fitted values and residuals with the fitted.values() and residuals() functions, respectively, for the following model:
#   
#   mod <- lm(wgt ~ hgt, data = bdims)
# Instructions
# 100 XP
# Instructions
# 100 XP
# mod (defined above) is available in your workspace.
# 
# Confirm that the mean of the body weights equals the mean of the fitted values of mod.
# Compute the mean of the residuals of mod.

# Mean of weights equal to mean of fitted values?
mean(fitted.values(mod)) == mean(bdims$wgt)
# Mean of the residuals
mean(residuals(mod))