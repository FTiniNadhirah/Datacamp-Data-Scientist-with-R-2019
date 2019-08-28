# Exercise
# Exercise
# Deselecting specific columns
# You can also drop or deselect columns by prepending the character vector of column names with the - or ! operators. For e.g., dt[, -c("col1", "col2")] or dt[, !c("col1", "col2")] would both return all columns except col1 and col2.
# 
# Instructions
# 100 XP
# Deselect the columns start_terminal and end_terminal from batrips.

# Deselect start_terminal and end_terminal columns
drop_terminal_cols <- batrips[, !c("start_terminal", "end_terminal")]
drop_terminal_cols