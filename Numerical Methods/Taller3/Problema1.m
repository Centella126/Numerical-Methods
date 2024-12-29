clear all
clc

%%Problema 1%%
%y'=texp(3t)-2y  
%a=0, b=1
%y(0)=0
%h=0.5
%h=(b-a)/M  ; M=(b-a)/h ;   M=(1-0)/0.5 ;   M=2  

a=0, b=1
f=@(t,y) (t.*exp(3*t)-2*y);
ya=0;M=2
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
