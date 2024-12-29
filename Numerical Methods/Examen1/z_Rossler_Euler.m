clear all
clc

% Parámetros del sistema
a = 0.22;
b = 0.2;
c = 5.7;

% Intervalo de tiempo y tamaño del paso
t0 = 0;
tf = 50;
h = 0.01;

% Condiciones iniciales
x0 = 3.0346363000;
y0 = -4.6406320000;
z0 = 0.0092008655;

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
    x(i+1) = x(i) + h*(-y(i) - z(i));
    y(i+1) = y(i) + h*(x(i) + a*y(i));
    z(i+1) = z(i) + h*(b + z(i)*(x(i)-c));
end

% Graficar la solución
figure;
plot3(x,y,z);
xlabel('x');
ylabel('y');
zlabel('z');
title('Solución del sistema de Rossler por el método de Euler');


