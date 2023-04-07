%% set x = 2u dx = 2 du
N = 1000; 
f = @(x)exp(x).*sin((x.^2)./4);
U = rand(1,N);
X = 2*f(2*U);
disp([mean(X) std(X) 2*std(X)/sqrt(N)]);

%%control variate
% use Y = 2*exp((2*U)).*sin((U)/4)
Y = 2*exp((2*U)).*sin((U)/4);
muy = 1.0418;%by calculator
Xb = mean(X);
Yb = mean(Y);
cs = -sum( (X-Xb).*(Y-Yb) )/sum((Y-Yb).^2) ;
Z = X + cs*( Y - muy );
disp([mean(Z) std(Z) 2*std(Z)/sqrt(N)])

% IMPORTANCE SAMPLING
N = 100000; 
U = randn(1,N); %% genrate from normal distribution after change our bound of the intergral
Y = exp(-abs(U-10));
disp( [mean(Y) 2*std(Y)/sqrt(N)])
% let w = z - 1
N = 100000;
U = randn(1,N);
Y = exp(1/2)*exp(-abs(U-11));
disp( [mean(Y) 2*std(Y)/sqrt(N)])