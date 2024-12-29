clear all
clc

%%Problema 1%%
%y'= (y.^2)/(1+t)  
%a=1, b=2
%y(1)=-1/(ln(2))
%h=0.05
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-1)/0.05 ;   M=20  

a=1, b=2
f=@(t,y) ((y.^2)/(1+t));
ya=-1/(log(2));M=20
%%%%%%%%%%%%%%%%%%%%%
H=heun(f,a,b,ya,M)
figure(1)
plot(H(:,1),H(:,2),'r*-')
