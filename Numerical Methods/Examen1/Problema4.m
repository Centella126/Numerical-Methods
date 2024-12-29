clear all
clc

%%Problema 1%%
%y'= 1+y/t 
%a=1, b=2
%y(0)=2
%h=0.025
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-1)/0.025 ;   M=40

a=1, b=2
f=@(t,y) (1+(y/t));
ya=2;
M=40
%%%%%%%%%%%%%%%%%%%%%
E1=euler(f,a,b,ya,M)
figure(1)
plot(E1(:,1),E1(:,2),'r*-')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(2)
% %solucion analitica S_A
% S_A=@(t) (t*exp(3*t)-2*y)
% fplot(S_A,[a,b],'b-')
% grid