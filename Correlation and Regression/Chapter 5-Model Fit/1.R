# Standard error of residuals
# One way to assess strength of fit is to consider how far off the model is for a typical case. That is, for some observations, the fitted value will be very close to the actual value, while for others it will not. The magnitude of a typical residual can give us a sense of generally how close our estimates are.
# 
# However, recall that some of the residuals are positive, while others are negative. In fact, it is guaranteed by the least squares fitting procedure that the mean of the residuals is zero. Thus, it makes more sense to compute the square root of the mean squared residual, or root mean squared error (RMSE). R calls this quantity the residual standard error.
# 
# To make this estimate unbiased, you have to divide the sum of the squared residuals by the degrees of freedom in the model. Thus,
# 
# RMSE=???ie2id.f.??????????????????=SSEd.f.??????????????????
# You can recover the residuals from mod with residuals(), and the degrees of freedom with df.residual().
# 
# Instructions
# 100 XP
# View a summary() of mod.
# Compute the mean of the residuals() and verify that it is approximately zero.
# Use residuals() and df.residual() to compute the root mean squared error (RMSE), a.k.a. residual standard error.

# View summary of model
summary(mod)

# Compute the mean of the residuals
mean(residuals(mod))

# Compute RMSE
sqrt(sum(residuals(mod)^2) / df.residual(mod))