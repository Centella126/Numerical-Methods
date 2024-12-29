clear all
clc

%%Problema 3%%
%y'= (1/t)*((y^2)+y)
%a=1, b=3
%y(1)=-2
%h=0.2
%h=(b-a)/M  ; M=(b-a)/h ;   M=(3-1)/0.2 ;   M=10  

f=@(t,y) ((1/t)*((y^2)+y));
a=1; 
b=3; 
M=10; 
ya=-2; 

%solucion numerica Rung Kutta
R=rk4(f,a,b,ya,M)
plot(R(:,1),R(:,2),'r-*')
xlabel('Tiempo')
ylabel('Solución y')
grid
