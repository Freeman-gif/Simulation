N = 1000; U = rand(5,N);
X = -log(U); I = [1 2 3 4 5]*X > 21.6;
disp( [mean(I) var(I) 2*std(I)/sqrt(N)] )
%% Antithetic varaible
N = N/2; U = rand(5,N);
X = -log(1-U); I = [1 2 3 4 5]*X > 21.6; % add the complemntary variable 
Y = -log(U); J = [1 2 3 4 5]*Y > 21.6; J = (I+J)/2;
disp( [mean(J) var(J) 2*std(J)/sqrt(N)] )

% we get better result than just using MC 