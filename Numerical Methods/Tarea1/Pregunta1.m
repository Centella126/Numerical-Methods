%26.- Make a plot of the functions: f(x) = sin(1/x) and 
% f(x) = cos(1/x) over the interval [0:01; 0:1]. How do you 
% create x so that the plots look good?

clear all
clc

x= 0:0.02:1;
f1=sin(1./x);
f2=cos(1./x);    %IMPORTANTE usar el "." porque es un conjunto de valores

figure(1)   %Gráficas juntas
plot(x, f1, 'g.-')
grid
hold on
plot (x, f2, 'bo-')
hold off

title ('Pregunta 1')
xlabel ('Intervalo')
ylabel ('Función')
legend ('Función seno', 'Función coseno')


figure(2)   %Gráficas por separado
subplot(1,2,1)
plot(x, f1, 'g.-')
grid
subplot(1,2,2)
plot (x, f2, 'bo-')
grid


