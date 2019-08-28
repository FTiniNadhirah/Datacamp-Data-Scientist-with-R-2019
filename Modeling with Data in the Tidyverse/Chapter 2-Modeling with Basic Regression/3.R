# Making predictions using "beauty score"
# Say there is an instructor at UT Austin and you know nothing about them except that their beauty score is 5. What is your prediction Y^ of their teaching score Y?
#   
#   get_regression_table(model_score_2)
# term      estimate std_error statistic p_value lower_ci upper_ci
# <chr>        <dbl>     <dbl>     <dbl>   <dbl>    <dbl>    <dbl>
#   1 intercept    3.88      0.076     51.0        0    3.73     4.03 
# 2 bty_avg      0.067     0.016      4.09       0    0.035    0.099
# Instructions 1/2
# 50 XP
# 1
# 2
# Using the values of the intercept and slope from above, predict this instructor's score.
# 
# Use fitted intercept and slope to get a prediction
y_hat <- 3.88 + 5 * 0.0670
y_hat

# 
# Say it's revealed that the instructor's score is 4.7. Compute the residual for this prediction, i.e., the residual Y- and^.
# 
# Use fitted intercept and slope to get a prediction
y_hat <- 3.88 + 5 * 0.0670
y_hat

# Compute residual y - y_hat
4.7 - 4.215 
