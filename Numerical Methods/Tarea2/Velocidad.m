% 3.19 Modifique la función function odes imp desarrollada al final de la 
% Sec. 3.6 para que se le puedan pasar los argumentos de la función pasada.
% Pruébalo para el siguiente caso: 
% >> dvdt = @(v,m,cd) 9.81-(cd/m) *v^2; 
% >> odesimp(dvdt, 0.5,0,12,-10, 70, 0.23)

function yend = odesimp(dydt, dt, ti, tf, yi, varargin) %"varargin" es la lista variable de argumentos de entrada
    t = ti;
    y = yi;
    h = dt;
    while (1)
        if t + dt > tf
            h = tf - t
        end
        y = y + dydt(y, varargin{:}) * h;
        t = t + h;
        if t >= tf
            break
        end
    end
    yend = y;
end



