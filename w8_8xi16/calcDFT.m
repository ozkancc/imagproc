function [ output ] = calcDFT( input )
%UNT�TLED4 Summary of this function goes here
%   Detailed explanation goes here
n=length(input);
for k=0:n-1 %for each outputelement
    s=0;
    for t=0:n-1 %each input
        s=s+input(t+1)*exp(-2i*pi*t*k/n)
    end
    output(k+1)=s;

end

end