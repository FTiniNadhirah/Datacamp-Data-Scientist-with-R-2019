# Perception of correlation (2)
# Estimating the value of the correlation coefficient between two quantities from their scatterplot can be tricky. Statisticians have shown that people's perception of the strength of these relationships can be influenced by design choices like the x and y scales.
# 
# Nevertheless, with some practice your perception of correlation will improve. Toggle through the four scatterplots in the plotting window, each of which you've seen in a previous exercise. Jot down your best estimate of the value of the correlation coefficient between each pair of variables. Then, compare these values to the actual values you compute in this exercise.
# 
# If you're having trouble recalling variable names, it may help to preview a dataset in the console with str() or glimpse().
# 
# Instructions 1/4
# 25 XP
# Instructions 1/4
# 25 XP
# 1
# Draw the plot then calculate the correlation between OBP and SLG for all players in the mlbBat10 dataset.
# 
# Take Hint (-7 XP)
# 2
# Draw the plot then calculate the correlation between OBP and SLG for all players in the mlbBat10 dataset with at least 200 at-bats.
# 
# 3
# Draw the plot then calculate the correlation between height and weight for each sex in the bdims dataset.
# 
# 4
# Draw the plot then calculate the correlation between body weight and brain weight for all species of mammals. Alongside this computation, compute the correlation between the same two quantities after taking their natural logarithms.

# Run this and look at the plot
ggplot(data = mlbBat10, aes(x = OBP, y = SLG)) +
  geom_point()

# Correlation for all baseball players
mlbBat10 %>%
  summarize(N = n(), r = cor(OBP, SLG))

# Run this and look at the plot
mlbBat10 %>% 
  filter(AB > 200) %>%
  ggplot(aes(x = OBP, y = SLG)) + 
  geom_point()

# Correlation for all players with at least 200 ABs
mlbBat10 %>%
  filter(AB >= 200) %>%
  summarize(N = n(), r = cor(OBP, SLG))

# Run this and look at the plot
ggplot(data = bdims, aes(x = hgt, y = wgt, color = factor(sex))) +
  geom_point() 

# Correlation of body dimensions
bdims %>%
  group_by(sex) %>%
  summarize(N = n(), r = cor(hgt, wgt))

# Run this and look at the plot
ggplot(data = mammals, aes(x = BodyWt, y = BrainWt)) +
  geom_point() + scale_x_log10() + scale_y_log10()

# Correlation among mammals, with and without log
mammals %>%
  summarize(N = n(), 
            r = cor(BodyWt, BrainWt), 
            r_log = cor(log(BodyWt), log(BrainWt)))