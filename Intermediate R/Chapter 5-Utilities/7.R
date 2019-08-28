#' grepl & grep (2)
#' You can use the caret, ^, and the dollar sign, $ to match the content located in the start and end of a string, respectively. This could take us one step closer to a correct pattern for matching only the ".edu" email addresses from our list of emails. But there's more that can be added to make the pattern more robust:
#' 
#' @, because a valid email must contain an at-sign.
#' .*, which matches any character (.) zero or more times (*). Both the dot and the asterisk are metacharacters. You can use them to match any character between the at-sign and the ".edu" portion of an email address.
#' \\.edu$, to match the ".edu" part of the email at the end of the string. The \\ part escapes the dot: it tells R that you want to use the . as an actual character.
#' Instructions
#' 100 XP
#' Instructions
#' 100 XP
#' Use grepl() with the more advanced regular expression to return a logical vector. Simply print the result.
#' Do a similar thing with grep() to create a vector of indices. Store the result in the variable hits.
#' Use emails[hits] again to subset the emails vector.
#' 
#' 
# The emails vector has already been defined for you
emails <- c("john.doe@ivyleague.edu", "education@world.gov", "dalai.lama@peace.org",
            "invalid.edu", "quant@bigdatacollege.edu", "cookie.monster@sesame.tv")

# Use grepl() to match for .edu addresses more robustly
grepl(pattern = "@.*\\.edu", x = emails)

# Use grep() to match for .edu addresses more robustly, save result to hits
hits <- grep(pattern = "@.*\\.edu", x = emails)

# Subset emails using hits
emails[hits]