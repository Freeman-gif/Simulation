%% set x = 1+3u, y = 2w, dxdy = 6 dudw
N = 1000; 
U = rand(2,N);
w = U(1,:);
t = U(2,:);
f = @(x,y)exp(1+3*x)./((1+3*x).^2 + (2*y).^4);
k = 6*f(w,t);
disp([mean(k) std(k) 2*std(k)/sqrt(N)])

%% ANTITHETIC VARIABLE
% create complentary varaible for each simulate varaible 
U = rand(2,N/2);
w = U(1,:);
t = U(2,:);
k = 6*((f(w,t) + f(1-w,1-t))/2);
disp([mean(k) std(k) 2*std(k)/sqrt(N/2)])


