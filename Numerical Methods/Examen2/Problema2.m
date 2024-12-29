clear all
clc

%%Problema 2%%
%y'= 1+(y/t)+((y/t).^2)
%a=1, b=3
%y(1)=0
%h=0.02
%h=(b-a)/M  ; M=(b-a)/h ;   M=(3-1)/0.02 ;   M=100 

a=1, b=3
f=@(t,y) (1+(y/t)+(y/t).^2);
ya=0;M=100
%%%%%%%%%%%%%%%%%%%%%
H=heun(f,a,b,ya,M)
figure(1)
plot(H(:,1),H(:,2),'r*-')