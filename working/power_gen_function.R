# In-class practice for functions

#' Automobile Power Generation Function
#' @param croll rolling coefficient default = 0.015
#' @param m mass (kg)
#' @param g acceleration due to gravity (m/s^2) default = 9.8
#' @param V vehicle speed (m/s) with m = mass
#' @param A surface area of car (m^2)
#' @param p_air density of air (kg/m^3) default = 1.2
#' @param c_drag aerodynamic resistance default = 0.3
#' @return power (W)
#' 
#' Definition of function
power_gen = function(m, V, A, croll = 0.015, g = 9.8,  p_air = 1.2, c_drag= 0.3){
  Pb = croll * m * g *V + (0.5 * A * p_air * c_drag * V^3)
  return(Pb)
}

