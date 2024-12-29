clc
clear all
close all

%h=0.1
%h=(b-a)/M  ; M=(b-a)/h ;   M=(30-0)/0.1 ;   M=300

a=0;
b=30;
Za=[0 0 0 0 0 0];
M=300;
[T,Z]=rks4('F_Problema_2',a,b,Za,M);


% solucion y(t)
figure(1)
subplot(2,1,1)
plot(T,Z(:,1),'r*')
title('Problema 2')
xlabel('t')
ylabel('x')
grid

subplot(2,1,2)
plot(T,Z(:,2),'r*')
xlabel('t')
ylabel('y')
grid


