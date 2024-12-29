clear all
clc

% Parámetros del sistema
a = 0.6;
b = 1;

% Intervalo de tiempo y tamaño del paso
t0 = 0;
tf = 50;
h = 0.01;

% Condiciones iniciales
x0 = 0;
y0 = 0;
z0 = 0;

% Número de pasos
N = round((tf-t0)/h);

% Inicialización de las soluciones
x = zeros(N+1,1);
y = zeros(N+1,1);
z = zeros(N+1,1);

% Condiciones iniciales
x(1) = x0;
y(1) = y0;
z(1) = z0;

% Resolución del sistema por el método de Euler
for i=1:N
    x(i+1) = x(i) + h*(y(i));
    y(i+1) = y(i) + h*(z(i));
    z(i+1) = z(i) + h*(-a*z(i)-b*y(i)+abs(x(i))-1);
end

% Graficar la solución
figure;
plot3(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Solución del sistema de Rossler por el método de Euler');