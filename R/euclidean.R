#' Euclidean algorithm to find the greatest common divisor of two numbers. 
#' 
#' @param x A number.
#' @param y A number.
#' @returns The greatest common divisor of both inputs which is a number.
#' @examples
#' euclidean(252, 105)
#' euclidean(100, 1000)



euclidean <- function(x, y) {

  #check if x and y are numeric values.
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("Invalid input. Variables must be a numeric")
  } 
  
  #find the gcd
  while(y != 0) {
    remainder <- x %% y
    x <- y
    y <- remainder
  }
  
  return(x)
}





