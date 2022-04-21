atm_conduct <- function(kd = 0.7, k0 = 0.1, vm, zm, h) {
  zd = kd*h
  z0 = k0*h
  if(zm > h){
     Cat = vm / (6.25 * log((zm - zd) / z0) ^2)
     return(Cat)} 
     else{"zm must be greater than vegitation height"}

}

