clear
x = 100; % number of rabbit
y = 20; % number of fox 
k1 = 2;
k2 =0.05;
n = 3;
k4 = 1.5 ;
T=2000;
t=0;






XT= zeros(1,T);
FT = zeros(1,T);
time=zeros(1,T);
time(1)=0;
XT(1) = x;
FT(1) = y;

for j = 2:T
    lambda = [k1*x k2*x*y k4*y];
    la=sum(lambda);
    clambda=cumsum(lambda);
    clambda=clambda/clambda(n);
    t=t-log(rand)/la;
    u=rand;
    if(u<clambda(1))
        x = x+1;
    
    elseif (u<clambda(2))
        y = y+1;
        x = x-1;
    else 
        y = y-1;
    end
    XT(j) = x;
    FT(j) = y;
    time(j) = t;
end
plot(time,XT,time,FT)
