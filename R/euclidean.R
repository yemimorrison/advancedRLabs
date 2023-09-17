euclidean <- function(x, y) {

  #check if x and y are numeric values.
  if (!is.numeric(x) || !is.numeric(y)) {
    stop("Invalid input. Variables must be a numeric")
  } 
  
  #Determine which of the numbers is larger
  max_int <- max(c(x,y))
  min_int <- min(c(x,y))
  
  #find the difference between the two integers
  diff_int <- max_int - min_int

  #find the gcd
  gcd <- 1
  for (i in 1:max_int) {
    if((x%% i) == 0 && (y %% i) == 0 && (diff_int %% i) == 0)
      gcd <- i
  }
  return(gcd)
}


