clear all
clc

%%Problema 1%%
%y'= (1/t^2)-(y/t)-(y^2)
%a=1, b=2
%y(1)=-1
%h=0.05
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-1)/0.05 ;   M=20  

f=@(t,y) ((1/t^2)-(y/t)-(y^2));
a=1; 
b=2; 
M=20; 
ya=-1; 

%solucion numerica Rung Kutta
R=rk4(f,a,b,ya,M)
plot(R(:,1),R(:,2),'r-*')
xlabel('Tiempo')
ylabel('Solución y')
grid
