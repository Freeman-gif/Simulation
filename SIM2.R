nhpp_thin = function(lambdat, lambda=7, T=10)
{
  t = 0; I = 0; S = 0
  U1 = runif(1); t = t - log(U1)/lambda  
  while(t < T){
    U2 = runif(1)
    if( U2 <= lambdat(t)/lambda ){
      I  =  I + 1; S[I] = t
    }
    U1 = runif(1); t = t - log(U1)/lambda  
  }
  list(I = I, S = S)
}
lambdat =  function(t) 3 + 4/(t+1)
set.seed(0);
nhpp_thin(lambdat) #seed for repeatability
