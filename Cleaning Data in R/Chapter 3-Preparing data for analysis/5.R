# Upper and lower case
# In addition to trimming and padding strings, you may need to adjust their case from time to time. Making strings uppercase or lowercase is very straightforward in (base) R thanks to toupper() and tolower(). Each function takes exactly one argument: the character string (or vector/column of strings) to be converted to the desired case.
# 
# Instructions
# 100 XP
# Instructions
# 100 XP
# There's a vector of state abbreviations called states in your workspace, but there's a problem...it's all lowercase. It's more common for state abbreviations to be all uppercase.
# 
# Print states to the console.
# Make states all uppercase and save the result to states_upper.
# Make states_upper all lowercase again, but don't save the result.

# Print state abbreviations
states <- c("al", "ak", "az", "ar", "ca", "co", "ct", "de", "fl", "ga", 
            "hi", "id", "il", "in", "ia", "ks", "ky", "la", "me", "md", "ma", 
            "mi", "mn", "ms", "mo", "mt", "ne", "nv", "nh", "nj", "nm", "ny", 
            "nc", "nd", "oh", "ok", "or", "pa", "ri", "sc", "sd", "tn", "tx", 
            "ut", "vt", "va", "wa", "wv", "wi", "wy")

# Make states all uppercase and save result to states_upper
states_upper <- toupper(states)
states_upper

# Make states_upper all lowercase again
states_lower <- tolower(states_upper)
states_lower
