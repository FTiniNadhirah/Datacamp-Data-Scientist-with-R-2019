# Using gather to tidy a dataset
# In order to represent the joined vote-topic data in a tidy form so we can analyze and graph by topic, we need to transform the data so that each row has one combination of country-vote-topic. This will change the data from having six columns (me, nu, di, hr, co, ec) to having two columns (topic and has_topic).
# 
# Instructions
# 100 XP
# Load the tidyr package.
# Gather the six topic columns in votes_joined into one column called topic (containing one of me, nu, etc.) and a column called has_topic (containing 0 or 1). Print the result without saving it.
# You don't actually care about the cases where has_topic is 0. Perform the gather() operation again, but this time also filter for only the rows where the topic in topic describes the vote. Save the result as votes_gathered.

# Load the tidyr package
library(tidyr)

# Gather the six me/nu/di/hr/co/ec columns
votes_joined %>%
  gather(topic, has_topic, one_of("me","nu","di","hr","co","ec"))


# Perform gather again, then filter
votes_gathered <- votes_joined %>%
  gather(topic, has_topic, one_of("me","nu","di","hr","co","ec")) %>%
  filter(has_topic == 1)

