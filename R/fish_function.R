#' Function to Write a function that takes a vector of fish names and always returns three items
#' @param vec input vector of items
#' @return common Most common fish
#' @return rare the rarest fish
#' @return total the total number of fish

# Equation
fish <- function(vec){
  common <- which.max(table(vec))
  rare <- which.min(table(vec))
  total <- sum(table(vec))
  a <- c(common, rare, total)
  return(a)
}
