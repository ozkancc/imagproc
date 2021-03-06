% FOUER�ER TRANSFORM%
% given N and X:x0,x1,x2,...xn-1 find Disc.F.T.

clc
clear all

x=[0 .5 1 .5 0 -.5 -1 -.5 0];

N=length(x);
dft2=0;
for K=0:1:(N-1)
    for n=0:1:(N-1)
        dft(n+1)=x(n+1)*(cos(n)+i*sin(n))^(K*n)/N+dft2;
        dft2=dft2+dft(n+1);
    end
   
end
