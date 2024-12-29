clear all
clc

%%Problema 1%%
%y'= -y+(t*(y^(1/2)))
%a=2, b=3
%y(2)=2
%h=0.025
%h=(b-a)/M  ; M=(b-a)/h ;   M=(3-2)/0.025 ;   M=40  

f=@(t,y) (-y+(t*(y^(1/2))));
a=2; 
b=3; 
M=40; 
ya=2; 

%solucion numerica Rung Kutta
R=rk4(f,a,b,ya,M)
plot(R(:,1),R(:,2),'r-*')
xlabel('Tiempo')
ylabel('Solución y')
grid
