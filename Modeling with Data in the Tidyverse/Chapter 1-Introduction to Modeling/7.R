# EDA of relationship of house price and waterfront
# Let's now perform an exploratory data analysis of the relationship between log10_price, the log base 10 house price, and the binary variable waterfront. Let's look at the raw values of waterfront and then visualize their relationship.
# 
# The column log10_price has been added for you in the house_prices dataset.
# 
# Instructions 1/2
# 50 XP
# 1
# 2
# Use glimpse() to view the structure of only two columns: log10_price and waterfront.
# 
# View the structure of log10_price and waterfront
house_prices %>%
  select(log10_price, waterfront) %>%
  glimpse()

# 
# Visualize the relationship between waterfront and log10_price using an appropriate geom_* function. Remember that waterfront is categorical.
# 
# View the structure of log10_price and waterfront
house_prices %>%
  select(log10_price, waterfront) %>%
  glimpse()

# Plot 
ggplot(house_prices, aes(x = waterfront, y = log10_price)) +
  geom_boxplot() +
  labs(x = "waterfront", y = "log10 price")