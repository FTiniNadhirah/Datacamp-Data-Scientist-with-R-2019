# Linear vs. average
# The R2 gives us a numerical measurement of the strength of fit relative to a null model based on the average of the response variable:
#   y^null=y¯
# This model has an R2 of zero because SSE=SST. That is, since the fitted values (y^null) are all equal to the average (y¯), the residual for each observation is the distance between that observation and the mean of the response. Since we can always fit the null model, it serves as a baseline against which all other models will be compared.
# 
# In the graphic, we visualize the residuals for the null model (mod_null at left) vs. the simple linear regression model (mod_hgt at right) with height as a single explanatory variable. Try to convince yourself that, if you squared the lengths of the grey arrows on the left and summed them up, you would get a larger value than if you performed the same operation on the grey arrows on the right.
# 
# It may be useful to preview these augment()-ed data frames with glimpse():
#   
#   glimpse(mod_null)
# glimpse(mod_hgt)
# Instructions
# 100 XP
# Compute the sum of the squared residuals (SSE) for the null model mod_null.
# Compute the sum of the squared residuals (SSE) for the regression model mod_hgt.

# Compute SSE for null model
mod_null %>%
  summarize(SSE = var(.resid))

# Compute SSE for regression model
mod_hgt %>%
  summarize(SSE = var(.resid))