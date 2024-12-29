clear all
clc

% Parámetros del sistema
s = 10;
r = 28;
b = 8/3;

% Intervalo de tiempo y tamaño del paso
t0 = 0;
tf = 50;
h = 0.01;

% Condiciones iniciales
x0 = 9;
y0 = -9;
z0 = 28;

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
    x(i+1) = x(i) + h*(s*(y(i)-x(i)));
    y(i+1) = y(i) + h*(x(i)*(r-z(i))-y(i));
    z(i+1) = z(i) + h*(x(i)*y(i)-b*(z(i)));
end

% Graficar la solución
figure;
plot3(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Solución del sistema de Rossler por el método de Euler');