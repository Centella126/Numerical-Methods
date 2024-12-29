clc
clear all

%h=0.001
%h=(b-a)/M  ; M=(b-a)/h ;   M=(5-0)/0.001 ;   M=5000 

a=0;
b=5;
Za=[1,0];
M=5000;
[T,Z]=rks4('F_Problema_1',a,b,Za,M);


% solucion y(t)
figure(1)
subplot(2,1,1)
plot(T,Z(:,1),'r*')
title('Problema 1')
xlabel('t')
ylabel('x')
grid

subplot(2,1,2)
plot(T,Z(:,2),'r*')
xlabel('t')
ylabel('y')
grid

