clear all
clc

%%Problema 1%%
%y'= -(y+1)*(y+3)
%a=0, b=2
%y(0)=-2
%h=0.02
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-0)/0.02 ;   M=100  

f=@(t,y) (-(y+1)*(y+3));
a=0; 
b=2; 
M=100; 
ya=-2; 

%solucion numerica Rung Kutta
R=rk4(f,a,b,ya,M)
plot(R(:,1),R(:,2),'r-*')
xlabel('Tiempo')
ylabel('Solución y')
grid
