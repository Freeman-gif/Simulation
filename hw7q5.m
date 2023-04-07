%% a. create antithetic variables simulator use U = (Z^3*e^Z - Z^3*e^Z)/2, Z ~ N(0,1)
%% b/

f = @(z)( z^3*exp(z) - z^3*exp(-z) )/2;
N = 1; mu = f(randn); ss = 0;
while N < 10000 || 2*sqrt(ss/N) > .05, N = N + 1;
    mo = mu; mu = mu + ( f(randn) - mu )/N;
    ss = ( 1 - 1/(N-1) )*ss + N*( mu - mo )^2;
end
disp( [N mu 2*sqrt(ss/N)] )

