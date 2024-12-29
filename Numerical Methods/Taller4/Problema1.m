clear all
clc

%%Problema 1%%
%y'= -5y+5t^2+2t  
%a=0, b=1
%y(0)=1/3
%h=0.1
%h=(b-a)/M  ; M=(b-a)/h ;   M=(1-0)/0.1 ;   M=10  

a=0, b=1
f=@(t,y) ((-5*y)+(5.*t^.2)+(2*t));
ya=(1/3);M=10
%%%%%%%%%%%%%%%%%%%%%
H=heun(f,a,b,ya,M)
figure(1)
plot(H(:,1),H(:,2),'r*-')
