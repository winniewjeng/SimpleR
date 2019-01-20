# Takes in two variables (one for numbers and one for text arguments), 
# and then checks if the first argument is greater than 100, it prints out "pass",
# if less than 100, it prints out "fail", if equal to 100 (print out any text of your choice)
# and if text, prints out "invalid". For the second argument if it is text it prints out "valid", 
# if it is not text it does nothing. Than run the function once with any choice of text, 
# number input (examples below). Note you might need to use two separate evaluation paths. 
# Also despite the first argument being intended for numbers (one could accidentally pass text),
# for the second argument it is intended for text (one could accidently pass numbers).


# prompt for user input
get.num <- readline(prompt="Enter a number: ")
# introduce NA by coercion
get.num <- as.numeric(get.num)
# prompt for user input
get.str <- readline(prompt="Enter a string: ")

# create function func that prints the states of the variable args num and str
func <- function(num, str) {
  # check if first arg num is numeric
  if (is.na(num)) {
    result.1 <- "( invalid"
  } else if (as.numeric(num) > 100) {
    result.1 <- "( passed"
  } else if (as.numeric(num) < 100) {
    result.1 <- "( failed"
  } else if (as.numeric(num) == 100) {
    result.1 <- "( exact"
  }
  # check if second arg str is string
  if (is.character(str) && is.na(as.numeric(str))) {
    result.2 <- "| valid)"
  } else {
    result.2 <- ")"
  }
  # print the verdits
  print(c(result.1, result.2), quote = FALSE)
}

# function call
func(get.num, get.str)
