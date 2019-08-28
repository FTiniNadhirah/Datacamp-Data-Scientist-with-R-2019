# Putting a rug down
# The plot we just made looks pretty good, but we can see a small hint of bi-modality between the hours of 10 and 15. Given we just are looking the blob of a density estimate it's hard to know how confident we are in that shape.
# 
# Let's alleviate this by doing a couple things.
# 
# First, lower the alpha on the density plot so we can more accurately locate these peaks using the background grid.
# 
# Next, add a rug-plot beneath the density plot using geom_rug(). To show any overlap that may occur in the rug plot set its alpha to 0.5.
# 
# The dataframe you made in the last exercise: truck_speeding has already been loaded for you.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Set alpha of density plot to 0.7.
# Add geom_rug() to the plot.
# Set alpha of rug plot to 0.5.

ggplot(truck_speeding, aes(x = hour_of_day)) +
  # Adjust opacity to see gridlines with alpha = 0.7
  geom_density(bw = 1.5, fill = 'steelblue', alpha = 0.7) +
  # add a rug plot using geom_rug to see individual datapoints, set alpha to 0.5.
  geom_rug(alpha = 0.5) +
  labs(title = 'Citations by hour', subtitle = "Gaussian kernel SD = 1.5")