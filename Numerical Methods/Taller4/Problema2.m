clear all
clc

%%Problema 2%%
%y'= t^-2(sin2t-2ty) 
%a=1, b=2
%y(1)=2
%h=0.25
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-1)/0.25 ;   M=4 

a=1, b=2
f=@(t,y) ((t^(-2))*(sin(2*t)-2*t*y));
ya=2;M=4
%%%%%%%%%%%%%%%%%%%%%
H=heun(f,a,b,ya,M)
figure(1)
plot(H(:,1),H(:,2),'r*-')