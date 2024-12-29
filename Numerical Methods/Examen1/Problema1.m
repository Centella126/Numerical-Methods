clear all
clc

%%Problema 1%%
%y'= y^2/(1+t) 
%a=1, b=2
%y(1)=-(ln2)^-1
%h=0.05
%h=(b-a)/M  ; M=(b-a)/h ;   M=(2-1)/0.05 ;   M=20  

a=1, b=2
f=@(t,y) ((y.^2)/(1+t));
ya=-1/(log(2));
M=20
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
