#' Atmospheric Conductance Function
#' 
#' This function computes atmospheric conductance. This refers to how easily water diffuses into the air and depends largely on wind speed.
#' 
#' @param kd coefficient
#' @param k0 coefficient
#' @param vm wind speed (cm/s)
#' @param h vegetation height (cm)

atm_conduct <- function(kd = 0.7, k0 = 0.1, vm, h) {
  zd = kd*h
  z0 = k0*h
  
  zm = h + 200
  
  Cat = vm / (6.25 * log((zm - zd) / z0) ^2)
  
  return(list(Cat=Cat))

  }

