# Load an R Package
# There are basically two extremely important functions when it comes down to R packages:
#   
#   install.packages(), which as you can expect, installs a given package.
# library() which loads packages, i.e. attaches them to the search list on your R workspace.
# To install packages, you need administrator privileges. This means that install.packages() will thus not work in the DataCamp interface. However, almost all CRAN packages are installed on our servers. You can load them with library().
# 
# In this exercise, you'll be learning how to load the ggplot2 package, a powerful package for data visualization. You'll use it to create a plot of two variables of the mtcars data frame. The data has already been prepared for you in the workspace.
# 
# Before starting, execute the following commands in the console:
#   
#   search(), to look at the currently attached packages and
# qplot(mtcars$wt, mtcars$hp), to build a plot of two variables of the mtcars data frame.
# An error should occur, because you haven't loaded the ggplot2 package yet!
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# To fix the error you saw in the console, load the ggplot2 package. Make sure you are loading (and not installing) the package!
# Now, retry calling the qplot() function with the same arguments.
# Finally, check out the currently attached packages again.

# Load the ggplot2 package
library(ggplot2)

# Retry the qplot() function
qplot(mtcars$wt, mtcars$hp)


# Check out the currently attached packages again
search()