# Squaring elements of a given vector

square_for <- function(x){
  # [ToDo] Use the for loop
  
  #initialize y, the output
  y <- numeric(length(x))
  
  for(i in 1:length(x)) y[i] <- x[i]^2
  
  y
}

square_sapply <- function(x){
  # [ToDo] Use the sapply function
  y <- sapply(x, function(input) input^2)
  
  y
}

square_vec <- function(x){
  # [ToDo] Use power(^) function in vector form
  y <- x^2
  
  y
}

square_vec2 <- function(x){
  # [ToDo] Use multiplication(*) function in vector form
  y <- x*x
  
  y
}

# [ToDo] Create a vector x of size 100,000 of normal variables

x <- rnorm(100000)

# [ToDo] Verify that all functions return the same output
y1 <- square_for(x)
y2 <- square_sapply(x)
y3 <- square_vec(x)
y4 <- square_vec2(x)

identical(y1,y2)
identical(y2,y3)
identical(y3,y4)

# [ToDo] Use microbenchmark package to compare three functions in terms of speed
library(microbenchmark)

microbenchmark(
  square_for(x),
  square_sapply(x),
  square_vec(x),
  square_vec2(x)
)
