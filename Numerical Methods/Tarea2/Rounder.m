% 3.15 Desarrolle una función de archivo M llamada rounder para 
% redondear un número x a un número específico de dígitos decimales,
% n. La primera línea de la función debe configurarse como 
% function xr = redondeo (x, n) Pruebe el programa redondeando cada 
% uno de los siguientes a 2 dígitos decimales: x = 477,9587, -477,9587,
% 0,125, 0,135, -0,125 y -0,135.

function xr = Rounder(x,n)

%x = Número que se redondeará
%n = Números de decimales a los que se redondeará

xr=round(x,n)
