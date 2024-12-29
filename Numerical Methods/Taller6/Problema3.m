clc
clear all
close all

%h=0.01
%h=(b-a)/M  ; M=(b-a)/h ;   M=(5-0)/0.01 ;   M=500

a=0;
b=5;
Za=[1,0];
M=500;
[T,Z]=rks4('F_Problema_3',a,b,Za,M);


% solucion y(t)
figure(1)
subplot(2,1,1)
plot(T,Z(:,1),'r*')
title('Problema 3')
xlabel('t')
ylabel('x')
grid

subplot(2,1,2)
plot(T,Z(:,2),'r*')
xlabel('t')
ylabel('y')
grid

