samplesize = 5000;

fxy = @(x,y) exp((x+y).^2); %integrand

x = rand(1, samplesize); %uniform x ~(0,1)

y = rand(1, samplesize); %uniform y ~(0,1)

plot(x,y,'.')

m = 2; %measure of domain

Ef = (1/samplesize)*sum(fxy(x,y)); %expected value

integral_value = m*Ef %estimation of integral

syms x y;

vpa(int(int((exp(x+y).^2),y,[0,1]),[0,1]))