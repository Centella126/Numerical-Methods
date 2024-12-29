clear all
clc

%%Problema 2%%
%y'= -y+1
%a=0, b=1
%y(0)=0
%h=0.25
%h=(b-a)/M  ; M=(b-a)/h ;   M=(1-0)/0.01 ;   M=100 

a=0, b=1
f=@(t,y) (-y+1);
ya=0;M=100
%%%%%%%%%%%%%%%%%%%%%
H=heun(f,a,b,ya,M)
figure(1)
plot(H(:,1),H(:,2),'r*-')