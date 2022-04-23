atm_conduct <- function(kd = 0.7, k0 = 0.1, vm, h) {
  zd = kd*h
  z0 = k0*h
  
  zm = h + 200
  
  # if(zm > h){
  #    Cat = vm / (6.25 * log((zm - zd) / z0) ^2)
  #    return(Cat)} 
  #    else{"zm must be greater than vegitation height"}
  
  Cat = vm / (6.25 * log((zm - zd) / z0) ^2)
  
  #return(Cat)
  
  return(list(Cat=Cat))

  }

