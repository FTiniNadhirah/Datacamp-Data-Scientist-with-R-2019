# Removing outliers
# Observations can be outliers for a number of different reasons. Statisticians must always be careful-and more importantly, transparent-when dealing with outliers. Sometimes, a better model fit can be achieved by simply removing outliers and re-fitting the model. However, one must have strong justification for doing this. A desire to have a higher R2 is not a good enough reason!
#   
#   In the mlbBat10 data, the outlier with an OBP of 0.550 is Bobby Scales, an infielder who had four hits in 13 at-bats for the Chicago Cubs. Scales also walked seven times, resulting in his unusually high OBP. The justification for removing Scales here is weak. While his performance was unusual, there is nothing to suggest that it is not a valid data point, nor is there a good reason to think that somehow we will learn more about Major League Baseball players by excluding him.
# 
# Nevertheless, we can demonstrate how removing him will affect our model.
# 
# Instructions
# 100 XP
# Use filter() to create a subset of mlbBat10 called nontrivial_players consisting of only those players with at least 10 at-bats and OBP of below 0.500.
# Fit the linear model for SLG as a function of OBP for the nontrivial_players. Save the result as mod_cleaner.
# View the summary() of the new model and compare the slope and R2 to those of mod, the original model fit to the data on all players.
# Visualize the new model with ggplot() and the appropriate geom_*() functions.

# Create nontrivial_players
nontrivial_players <- mlbBat10 %>%
  filter(AB >= 10, OBP < 0.5)

# Fit model to new data
mod_cleaner <- lm(SLG ~ OBP, data = nontrivial_players)

# View model summary
summary(mod_cleaner)


# Visualize new model
ggplot(data = nontrivial_players, aes(x = OBP, y = SLG)) +
  geom_point() + 
  geom_smooth(method = "lm")