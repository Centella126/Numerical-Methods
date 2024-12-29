% 3.13 El método de "dividir y promediar", un método antiguo para
% aproximar la raíz cuadrada de cualquier número positivo a, se
% puede formular como x= (x+a/x)/2 Escriba una función de archivo
% M bien estructurada basada en la estructura de ciclo 
% while...break para implementar este algoritmo. Use la sangría
% adecuada para que la estructura sea clara. En cada paso, 
% estime el error en su aproximación como: 
% e=abs((Xnuevo-Xantiguo)/Xnuevo). 
% Repita el ciclo hasta que e sea menor o igual a un valor 
% especificado. Diseñe su programa para que devuelva tanto el
% resultado como el error. Asegúrese de que pueda evaluar la
% raíz cuadrada de números que son iguales y menores que cero.
% Para el último caso, muestre el resultado como un número
% imaginario. Por ejemplo, la raíz cuadrada de -4 devolvería
% 2i. Pruebe su programa evaluando a = 0, 2, 10 y -4 para 
% e= 1 x 10-4.


function [raiz, error] = DividirYPromediar(r, e)
%r, A r se le sacará la raíz
%e es la tolerancia de error
%raiz es del número que ese introduce
%error es el error que surge de calcular la raiz con aproximación
negativos=0;

if r==0
    raiz = 0;
    error = 0;
    return
elseif r<0  
    negativo = 1;
    r = -r;


error = Inf; %Inf regresa la representación escalar de infinito positivo
x_antiguo = r; 
while error > e % e = error de aproximación
    x_nuevo = (x_antiguo+r/x_antiguo)/2;
    error = abs((x_nuevo-x_antiguo)/x_nuevo);
    x_antiguo = x_nuevo;
end

raiz = x_nuevo;


if negativo
    raiz = raiz * sqrt(-1)
end
end