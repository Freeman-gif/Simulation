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