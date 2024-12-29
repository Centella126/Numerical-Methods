clear all
clc

%%Problema 2%%
%y'= (y*(t^3))-(1.1*y)
%a=0, b=2
%y(0)=1
%h=0.5
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-0)/0.5 ;   M=4  

f=@(t,y) ((y*(t^3))-(1.1*y));
a=0; 
b=2; 
M=4; 
ya=1; 

%solucion numerica Rung Kutta
R=rk4(f,a,b,ya,M)
plot(R(:,1),R(:,2),'r-*')
xlabel('Tiempo')
ylabel('Solución y')
grid
