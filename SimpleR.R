print("Hello world!", quote=FALSE)

# take user input
year.of.birth <- readline(prompt="Enter the year you were born: ")

# convert character into integer
year.of.birth <- as.integer(year.of.birth)

# functino that demonstrates conditional statement
check_age <- function(year) {
  age <- 2020 - year
  if (age < 0) {
    print("You are unborn in 2020")
  } else {
    print(paste("you are ", age, " in 2020"))
  }
  # return
  return(age)
}

# function call
age <- check_age(year.of.birth)
print(paste("you are ",age-1, " this year"))

print("Count how many decades you are alive by 2020")
count <- 0

# loop
while (age > 0) {
  age <- age - 10
  if (count <= 1) {
    print(paste(count, " decade"))
  } else {
    print(paste(count, " decades"))
  }
  count <- count + 1
}





