clear all
clc

%%Problema 2%%
%y'= t^-1(y^2+y)  
%a=1, b=3
%y(1)=-2
%h=0.2
%h=(b-a)/M  ; M=(b-a)/h ;   M=(3-1)/0.2 ;   M=10 

a=1
b=3
f=@(t,y) (t.^(-1)*(y^2+y));
ya=-2;
M=10
%%%%%%%%%%%%%%%%%%%%%
E1=euler(f,a,b,ya,M)
figure(1)
plot(E1(:,1),E1(:,2),'r*-')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% figure(2)
% %solucion analitica S_A
% S_A=@(t) (-(exp))
% fplot(S_A,[a,b],'b-')
% grid
