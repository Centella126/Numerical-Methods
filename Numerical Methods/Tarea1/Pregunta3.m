
%2.19 The loglog function operates in an identical fashion to the 
% plot function except that logarithmic scales are used for both the 
% x and y axes. Use this function to plot the data and function as
% described in Prob. 2.18. Explain the results.

clear all
clc

%Problema 2.18
v= 10:10:80;
f= [25, 70, 380, 550, 610, 1220, 830, 1450];
v2= 0:100;
F=0.2741*v2.^(1.9842);

figure (1)
plot(v,f,'mo');
hold on
plot(v2, F, 'k.-')

title ('Data vs function')
xlabel ('Velocity [m/s]')
ylabel ('Wind tunel data dor force [N]')
legend ('Data', 'Function')

%Problema 2.19
figure (2)
loglog(v,f,'mo');
hold on
loglog(v2, F, 'k.-')

title ('Data vs function: loglog')
xlabel ('Velocity [m/s]')
ylabel ('Wind tunel data dor force [N]')
legend ('Data', 'Function')


%La función se linealizó, porque como tal la gráfica magenta sigue teniendo
%los mismos datos, pero la gráfica de la función pasó de ser curva a ser
%recta.