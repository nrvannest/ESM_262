#' Function to calculate the effect of heat stress in trees
#' @param date YYYY-MM-DD
#' @param tree_age age class of tree, 1 = seedling, 2 = sapling, 3 = adult
#' @param ppt (mm) total precipitation for the year
#' @param max_temp (degrees F) maximum temperature recorded
#' @returns text with the risk associated with each temperature and ppt for each age class

# Equation
growth <- function(date, tree_age, ppt, max_temp){
  print(paste("Date: ", date))
  if(tree_age == 1){
    print("Seedling, higher risk of mortality from heat related event")
    if(max_temp > 30 && ppt < 500){
      print(paste("Maximum temperature of:", max_temp,
            "degrees C and annual precipitation of:", ppt, 
            "mm causes high mortality risk."))
    }else
      print(paste("Maximum temperature of:", max_temp,
            "degrees C and annual precipitation of:", ppt, 
            "mm causes low mortality risk."))
  }
  if(tree_age == 2){
    print("Sapling, medium risk of mortality from heat related event")
    if(max_temp > 35 && ppt < 200){
      print(paste("Maximum temperature of:", max_temp,
            "degrees C and annual precipitation of:", ppt, 
            "mm causes high mortality risk."))
    }else
      print(paste("Maximum temperature of:", max_temp,
            "degrees C and annual precipitation of:", ppt, 
            "mm causes low mortality risk."))
  }
  if(tree_age == 3){
    print("Adult, low risk of mortality from heat related event")
    if(max_temp > 38 && ppt < 100){
      print(paste("Maximum temperature of:", max_temp,
            "degrees C and annual precipitation of:", ppt, 
            "mm causes high mortality risk."))
    }else
      print(paste("Maximum temperature of:", max_temp,
            "degrees C and annual precipitation of:", ppt, 
            "mm causes low mortality risk."))
  }
}
  
