clear all
clc

%Regla

x1=[9.5 9.5 9.5 9.5 9.4];
y1=[6.5 7.1 7 7 6.1];
z1=[1.8 1.8 1.8 2.9 2.9];


x1_Prom=round(mean(x1),1); %ecuación 1
y1_Prom=round(mean(y1),1); %ecuación 2
z1_Prom=round(mean(z1),1); %ecuación 3



Deltax1=round(std(x1),1); %ecuación 4
Deltay1=round(std(y1),1); %ecuación 5
Deltaz1=round(std(z1),1); %ecuación 6

%ecuación 7
Vol_Promedio_R = round(x1_Prom*y1_Prom*z1_Prom,1);

%ecuación 8
Incertidumbre_R = round((Deltax1/x1_Prom)+(Deltay1/y1_Prom)+(Deltaz1/z1_Prom),1);

%ecuación 9
Error_Regla = round(Incertidumbre_R*100,1); 

%ecuaciones 10
DeltavR=round(Incertidumbre_R*Vol_Promedio_R,1);
ErrormasR=round(Vol_Promedio_R+DeltavR,1);
ErrormenosR=round(Vol_Promedio_R-DeltavR,1);


fprintf('------R E G L A------\n')
fprintf('Promedio en x: %.1f cm\n', x1_Prom);
fprintf('Promedio en y: %.1f cm\n', y1_Prom);
fprintf('Promedio en z: %.1f cm\n', z1_Prom);
fprintf('Delta x: %.1f\n', Deltax1);
fprintf('Delta y: %.1f\n', Deltay1);
fprintf('Delta z: %.1f\n', Deltaz1);
fprintf('Volumen promedio: %.1f\n', Vol_Promedio_R);
fprintf('Margen de error: %.1f\n', Incertidumbre_R);
fprintf('Porcentaje de error: %.1f \n', Error_Regla);
fprintf('V_promedio - Delta_V: (+) %.1f  | (-) %.1f\n\n', ErrormasR, ErrormenosR); 


%%%%%%%%%%%Vernier%%%%%%%%%%%%%%

x2=[9.4, 9.4, 9.22, 9.3, 9.3];
y2=[6.34, 6.6, 6.5, 6.6, 6.5];
z2=[1.92, 1.4, 1.65, 1.36, 1.48];

x2_Prom=round(mean(x2),2); %ecuación 1
y2_Prom=round(mean(y2),2); %ecuación 2
z2_Prom=round(mean(z2),2); %ecuación 3

Deltax2=round(std(x2),2); %ecuación 4
Deltay2=round(std(y2),2); %ecuación 5
Deltaz2=round(std(z2),2); %ecuación 6

Vol_Promedio_V=round(x2_Prom*y2_Prom*z2_Prom,2); %ecuación 7

Incertidumbre_V=round((Deltax2/x2_Prom)+(Deltay2/y2_Prom)+(Deltaz2/z2_Prom),2); %ecuación 8

Error_Vernier=round(Incertidumbre_V*100,2); %ecuación 9

%ecuaciones 10

DeltavV=round(Incertidumbre_V*Vol_Promedio_V,2);

ErrormasV=round(Vol_Promedio_V+DeltavV,2);

ErrormenosV=round(Vol_Promedio_V-DeltavV,2);

fprintf('------V E R N I E R------\n')
fprintf('Promedio en x: %.2f cm\n', x2_Prom);
fprintf('Promedio en y: %.2f cm\n', y2_Prom);
fprintf('Promedio en z: %.2f cm\n', z2_Prom);
fprintf('Delta x: %.2f\n', Deltax2);
fprintf('Delta y: %.2f\n', Deltay2);
fprintf('Delta z: %.2f\n', Deltaz2);
fprintf('Volumen promedio: %.2f\n', Vol_Promedio_V);
fprintf('Margen de error: %.2f\n', Incertidumbre_V);
fprintf('Porcentaje de error: %.2f \n', Error_Vernier);
fprintf('V_promedio - Delta_V: (+) %.2f  | (-) %.2f\n\n', ErrormasV, ErrormenosV); 

%%%%%%%%%Vernier Digital%%%%%%%%%%%%%

x3=[9.4678, 9.5364, 9.37514, 9.31545, 9.44372];
y3=[6.67893, 6.7183, 6.65353, 6.61289, 6.68274];
z3=[1.70434, 1.74879, 1.55956, 1.70307, 1.61036];

x3_Prom=round(mean(x3),4); %ecuación 1
y3_Prom=round(mean(y3),4); %ecuación 2
z3_Prom=round(mean(z3),4); %ecuación 3

Deltax3=round(std(x3),4); %ecuación 4
Deltay3=round(std(y3),4); %ecuación 5
Deltaz3=round(std(z3),4); %ecuación 6

Vol_Promedio_VD=round(x3_Prom*y3_Prom*z3_Prom,4); %ecuación 7

Incertidumbre_VD=round((Deltax3/x3_Prom)+(Deltay3/y3_Prom)+(Deltaz3/z3_Prom),4); %ecuación 8

Error_VernierD=round(Incertidumbre_VD*100,4); %ecuación 9

%ecuaciones 10
DelvaV_VD=round(Incertidumbre_VD*Vol_Promedio_VD,4);

ErrormasVD=round(Vol_Promedio_VD+DelvaV_VD,4);

ErrormenosVD=round(Vol_Promedio_VD-DelvaV_VD,4);

fprintf('------V E R N I E R  D I G I T A L------\n')

fprintf('Promedio en x: %.4f cm\n', x3_Prom);
fprintf('Promedio en y: %.4f cm\n', y3_Prom);
fprintf('Promedio en z: %.4f cm\n', z3_Prom);
fprintf('Delta x: %.4f\n', Deltax3);
fprintf('Delta y: %.4f\n', Deltay3);
fprintf('Delta z: %.4f\n', Deltaz3);
fprintf('Volumen promedio: %.4f\n', Vol_Promedio_VD);
fprintf('Margen de error: %.4f\n', Incertidumbre_VD);
fprintf('Porcentaje de error: %.4f \n', Error_VernierD);
fprintf('V_promedio - Delta_V: (+) %.4f  | (-) %.4f\n', ErrormasVD, ErrormenosVD); 



