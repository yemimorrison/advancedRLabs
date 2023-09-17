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



