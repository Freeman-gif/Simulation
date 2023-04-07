%% set x = 1+2u, y = 2+4w, dxdy = 8 dudw
N = 1000; 
U = rand(2,N);
w = U(1,:);
t = U(2,:);
f = @(x,y)exp(2+4*y).*log((1+2*x).^2 + (2+4*y));
k = 8*f(w,t);
disp([mean(k) std(k) 2*std(k)/sqrt(N)])

%% ANTITHETIC VARIABLE
% create complentary varaible for each simulate varaible 
U = rand(2,N/2);
w = U(1,:);
t = U(2,:);
k = 8*((f(x,y) + f(1-w,1-y))/2);
disp([mean(k) std(k) 2*std(k)/sqrt(N/2)])