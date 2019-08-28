# Identifying outliers
# In Chapter 5, we will discuss how outliers can affect the results of a linear regression model and how we can deal with them. For now, it is enough to simply identify them and note how the relationship between two variables may change as a result of removing outliers.
# 
# Recall that in the baseball example earlier in the chapter, most of the points were clustered in the lower left corner of the plot, making it difficult to see the general pattern of the majority of the data. This difficulty was caused by a few outlying players whose on-base percentages (OBPs) were exceptionally high. These values are present in our dataset only because these players had very few batting opportunities.
# 
# Both OBP and SLG are known as rate statistics, since they measure the frequency of certain events (as opposed to their count). In order to compare these rates sensibly, it makes sense to include only players with a reasonable number of opportunities, so that these observed rates have the chance to approach their long-run frequencies.
# 
# In Major League Baseball, batters qualify for the batting title only if they have 3.1 plate appearances per game. This translates into roughly 502 plate appearances in a 162-game season. The mlbBat10 dataset does not include plate appearances as a variable, but we can use at-bats (AB) -- which constitute a subset of plate appearances -- as a proxy.
# 
# Instructions
# 100 XP
# Use filter() to keep only players who had at least 200 at-bats, assigning to ab_gt_200.
# Using ab_gt_200, create a scatterplot for SLG as a function of OBP.
# Find the row of ab_gt_200 corresponding to the one player (with at least 200 at-bats) whose OBP was below 0.200.

# Filter for AB greater than or equal to 200
ab_gt_200 <- mlbBat10 %>%
  filter(AB >= 200) 

# Scatterplot of SLG vs. OBP
ggplot(ab_gt_200, aes(x = OBP, y = SLG)) +
  geom_point()

# Identify the outlying player
ab_gt_200 %>%
  filter(    AB >= 200, 
             OBP < 0.200)