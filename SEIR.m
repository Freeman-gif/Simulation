clear
n=3;
N=100;
s=N-1;
i=1;
r=0;
e=0;
k1 = 0.01;
k2 =0.5;
k3 = 1;


T=1000;
t=0;






S=zeros(1,T);
I=zeros(1,T);
E = zeros(1,T);
R=zeros(1,T);
time=zeros(1,T);
time(1)=0;
E(1)=e;
S(1)=s;
I(1)=i;
R(1)=r;

for j = 2:T
    lambda = [k1*s*i k2*e k3*r];
    la=sum(lambda);
    clambda=cumsum(lambda);
    clambda=clambda/clambda(n);
    t=t-log(rand)/la;
    u=rand;
    if(u<clambda(1))
        s=s-1;
        e=e+1;
    
    elseif (u<clambda(2))
        e = e-1;
        i = i+1;
    else
       i = i-1;
       r = r+1;
    end
    S(j) = s;
    I(j) = i;
    E(j) = e;
    R(j) = r;    

    time(j) = t;
end
plot(time,S,time,E,time,I,time,R,time,S+E+I+R)
