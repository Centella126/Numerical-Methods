%Exactly what will be displayed after the following MATLAB commands are
%typed? 
% a)>> x = 5;
%   >> x ^ 3;
%   >> y = 8 - x
% b)>> q = 4:2:12;
%   >> r  = [7 8 4; 3 6 -5];
%   >> sum(q) * r(2, 3)

clear all
clc

% a)
x = 5;
x^3;
y = 8 - x

%Se asigna x = 5, la segunda instrucción no se guarda porque no hay un
%signo de igual de por medio. Y es igual a 3, porque solo se le restan los
%5 iniciales al 8


% b)
q = 4:2:12;
r = [7 8 4; 3 6 -5];
sum(q) * r(2, 3)

%q es igual a (2 4 6 8 10 12) y la suma de estos números es 40, el número 
% correspondiente a la posición (2,3) es -2... 40*-5=-200





