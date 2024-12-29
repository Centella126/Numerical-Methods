clear all
clc

%%Problema 1%%
%y'= (1/(t.^2))-(y/t)-(y.^2)
%a=1, b=2
%y(1)=-1
%h=0.05
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-1)/0.05 ;   M=20  

a=1, b=2
f=@(t,y) ((1/(t.^2))-(y/t)-(y.^2));
ya=-1;M=20
%%%%%%%%%%%%%%%%%%%%%
H=heun(f,a,b,ya,M)
figure(1)
plot(H(:,1),H(:,2),'r*-')
