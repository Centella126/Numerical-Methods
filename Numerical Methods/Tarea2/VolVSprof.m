% 3.11 El volumen V de líquido en un cilindro horizontal hueco de 
% radio r y longitud L está relacionado con la profundidad del 
% líquido h por V = [r²cos-¹((r-h)/r) - (r− h)√(2rh – h²)]L 
% Desarrolle un archivo M para crear una gráfica de volumen versus 
% profundidad. Aquí están las primeras líneas: 
% function cylinder (r, L, plot_title) 
% volume of horizontal cylinder
% entradas:
% r = radio
% L = longitud
% plot_title = cadena que contiene el título de la trama
% Pruebe su programa con
% >> cilindro(3,5,...
% 'Volumen versus profundidad para tanque horizontal...cilíndrico')

% Si la densidad de la esfera es menor que la densidad del agua, 
% podemos empezar probando como posibles valores de h sus valores 
% extremos: h0=0 (esto es, toda la esfera está fuera del agua, no 
% tiene ninguna parte sumergida) y h1=2R (toda la esfera está bajo 
% el agua).

%En este caso se tomará en cuenta a h como 0 (R=radio de la esfera)

%V = [r²cos-¹((r-h)/r) - (r− h)√(2rh – h²)]L 
function cylinder1(r, L, plot_title) 
r=3;
L=5;
h = linspace(0,2*r);
v= (r.^2*acos((r-h)/r)-(r-h).*sqrt((2*r*h)-h.^2))*L;

figure (1)
plot(h,v)
title('Volumen versus profundidad para tanque horizontal')
xlabel('Profundidad');
ylabel('Volúmen');
end




