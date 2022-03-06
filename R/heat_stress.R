#' Function to calculate the effect of heat stress in trees
#' @param tree_age age class of tree, 1 = seedling, 2 = immature adult, 3 = adult
#' @param ppt (mm) water deficit for current year
#' @param max_temp (degrees F) maximum temperature recorded
#' @param min_temp (degrees F) minimum temperature recorded
#' @returns mortality of each tree as a binary list

age <- c(1, 2, 1, 2, 3, 2, 1, 3, 3, 3, 2, 1, 1)
temp <- c(90, 95, 100, 101, 89, 95, 110, 118, 120) 

# Equation
growth <- function(tree_age, ppt, max_temp, min_temp = 30){
  climate <- max_temp*(ppt + min_temp)
  a <- matrix(data = NA, nrow = length(max_temp), ncol = length(tree_age))
  for(i in 1:length(tree_age)){
    a[, i] <- tree_age[i]*climate
  }
  # Create output that says if > than certain # mortality event occurs.
}
growth(age, 500, temp)

