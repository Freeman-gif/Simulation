%mc set x = 2u
N = 10000; 
f = @(x)sin(x.^3./(1+(x).^2));
U = rand(1,N);
X = 2*f(2*U);
disp([mean(X) std(X) 2*std(X)/sqrt(N)]);

%% Stratified

K = 500; Ni = N/K;%% strarta = 20
for i = 1 : K
    XS = 2*f((2*(i-1+rand(1,Ni)))/K);
    XSB(i) = mean(XS); 
    SS(i) = var(XS);
    SST = mean(SS);
end;
disp( [mean(XSB) 2*sqrt(SST)] )
