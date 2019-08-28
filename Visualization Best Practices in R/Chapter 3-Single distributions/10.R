# Exercise
# Exercise
# KDE with lots of data
# The code supplied will make a basic KDE of the percentage_over_limit for all citations. At first glance, the settings makes sense. We have a lot of data so we set our bin width nice and narrow: just one percent. Also, the rug plot, which has been thoughtfully added, has a lowered alpha of 0.7.
# 
# Running this code, you will immediately see it's not a great plot. The density estimate looks like a porcupine and the rug plot is essentially a thick black bar due to massive overlap.
# 
# Fix it by upping the bin width a bit to 2.5 and lowering the alpha of the rug plot to 0.05 to try and get some sense of the point overlap. Don't forget to change the subtitle to reflect the change in the kernel width!
#   
#   Instructions
# 100 XP
# Instructions
# 100 XP
# Change kernel sd to 2.5
# Set alpha of rugplot to 0.05
# Change the subtitle to "Gaussian kernel SD = 2.5" to reflect the new kernel width.

ggplot(md_speeding, aes(x = percentage_over_limit)) +
  # Increase bin width to 2.5
  geom_density(fill = 'steelblue', bw = 2.5,  alpha = 0.7) + 
  # lower rugplot alpha to 0.05
  geom_rug(alpha = 0.05) + 
  labs(
    title = 'Distribution of % over speed limit', 
    # modify subtitle to reflect change in kernel width
    subtitle = "Gaussian kernel SD = 2.5"
  )