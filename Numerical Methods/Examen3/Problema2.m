clear all
clc

%%Problema 1%%
%y'= (t*(exp(3*t)))-(2*y)
%a=0, b=1
%y(0)=0
%h=0.05
%h=(b-a)/M  ; M=(b-a)/h ;   M=(1-0)/0.05 ;   M=20  

f=@(t,y) ((t*(exp(3*t)))-(2*y));
a=0; 
b=1; 
M=20; 
ya=0; 

%solucion numerica Rung Kutta
R=rk4(f,a,b,ya,M)
plot(R(:,1),R(:,2),'r-*')
xlabel('Tiempo')
ylabel('Solución y')
grid
