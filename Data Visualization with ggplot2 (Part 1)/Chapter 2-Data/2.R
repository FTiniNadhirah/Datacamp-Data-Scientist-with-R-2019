# base package and ggplot2, part 2 - lm
# If you want to add a linear model to your plot, shown right, you can define it with lm() and then plot the resulting linear model with abline(). However, if you want a model for each subgroup, according to cylinders, then you have a couple of options.
# 
# You can subset your data, and then calculate the lm() and plot each subset separately. Alternatively, you can vectorize over the cyl variable using lapply() and combine this all in one step. This option is already prepared for you.
# 
# The code to the right contains a call to the function lapply(), which you might not have seen before. This function takes as input a vector and a function. Then lapply() applies the function it was given to each element of the vector and returns the results in a list. In this case, lapply() takes each element of mtcars$cyl and calls the function defined in the second argument. This function takes a value of mtcars$cyl and then subsets the data so that only rows with cyl == x are used. Then it fits a linear model to the filtered dataset and uses that model to add a line to the plot with the abline() function.
# 
# Now that you have an interesting plot, there is a very important aspect missing - the legend!
#   
#   In base package you have to take care of this using the legend() function. This has been done for you in the predefined code.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# Fill in the lm() function to calculate a linear model of mpg described by wt and save it as an object called carModel.
# Draw the linear model on the scatterplot.
# Write code that calls abline() with carModel as the first argument. Set the line type by passing the argument lty = 2.
# Run the code that generates the basic plot and the call to abline() all at once by highlighting both parts of the script and hitting control/command + enter on your keyboard. These lines must all be run together in the DataCamp R console so that R will be able to find the plot you want to add a line to.
# Run the code already given to generate the plot with a different model for each group. You don't need to modify any of this.

# Use lm() to calculate a linear model and save it as carModel
carModel <- lm(mpg ~ wt, data = mtcars)

# Basic plot
mtcars$cyl <- as.factor(mtcars$cyl)
plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)

# Call abline() with carModel as first argument and set lty to 2
abline(carModel, lty = 2)

# Plot each subset efficiently with lapply
# You don't have to edit this code
plot(mtcars$wt, mtcars$mpg, col = mtcars$cyl)

## this prints out a bunch of null values in list because nothing is returned from the abline function
## I have added results='hide' to prevent all that printing in the notebook
lapply(mtcars$cyl, function(x) {
  abline(lm(mpg ~ wt, mtcars, subset = (cyl == x)), col = x)
})

# This code will draw the legend of the plot
# You don't have to edit this code
legend(x = 5, y = 33, legend = levels(mtcars$cyl),
       col = 1:3, pch = 1, bty = "n")