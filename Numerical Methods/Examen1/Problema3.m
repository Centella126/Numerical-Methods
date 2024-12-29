clear all
clc

%%Problema 1%%
%y'= -y+t+1 
%a=0, b=5
%y(0)=1
%h=0.02
%h=(b-a)/M  ; M=(b-a)/h ;   M=(5-0)/0.02 ;   M=250

a=0, b=5
f=@(t,y) (-y+t+1);
ya=1;
M=250
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
