clear all
clc
figure(1)
y = [0.85 0.813 0.765 0.69 0.655 0.625 0.58 0.545 0.51 0.47 0.43 0.34 0.29 0.118];

t1 = [0.4205 0.4217 0.4185 0.4220 0.4206];
t1_prom = mean(t1);

t2 = [0.4088 0.4081 0.4079 0.4077 0.4095];
t2_prom = mean(t2);

t3 = [0.3956 0.3963 0.3967 0.3968 0.3959];
t3_prom = mean(t3);

t4 = [0.3758 0.3750 0.3777 0.3799 0.3774];
t4_prom = mean(t4);

t5 = [0.3641 0.3649 0.3655 0.3650 0.3662];
t5_prom = mean(t5);

t6 = [0.3595 0.3563 0.3595 0.3578 0.3584];
t6_prom = mean(t6);

t7 = [0.3454 0.3451 0.3445 0.3465 0.3447];
t7_prom = mean(t7);

t8 = [0.3321 0.3332 0.3316 0.3320 0.3313];
t8_prom = mean(t8);

t9 = [0.3209 0.3210 0.3220 0.3221 0.3218];
t9_prom = mean(t9);

t10 = [0.3086 0.3112 0.3101 0.3101 0.3102];
t10_prom = mean(t10);

t11 = [0.2966 0.2943 0.2956 0.2950 0.2947];
t11_prom = mean(t11);

t12 = [0.2610 0.2646 0.2638 0.2640 0.2636];
t12_prom = mean(t12);

t13 = [0.2464 0.2418 0.2441 0.2427 0.2428];
t13_prom = mean(t13);

t14 = [0.1515 0.1529 0.1507 0.1492 0.1519];
t14_prom = mean(t14);

x = [t1_prom, t2_prom, t3_prom, t4_prom, t5_prom, t6_prom, t7_prom, t8_prom, t9_prom,...
      t10_prom, t11_prom, t12_prom, t13_prom, t14_prom];

plot(x,y,'b*-')
xlabel('x')
ylabel('y')
grid

figure(2)
xlog=log10(x);
ylog=log10(y);
plot(xlog,ylog,'r*-')
xlabel('xlog')
ylabel('ylog')

figure(3)
[a, r2] = linregr(xlog,ylog);
a0=a(2) 
a1=a(1)

figure(4)
y_rl=@(x1) a0+a1*x1
fplot(y_rl,[xlog(end), xlog(1)])
grid

figure(5)
alfa2=10^(a0); 
beta2=a1;
y_curva=@(x2) alfa2*x2.^beta2
fplot(y_curva,[1, 5],'r-')
hold on 

x = [t1_prom, t2_prom, t3_prom, t4_prom, t5_prom, t6_prom, t7_prom, t8_prom, t9_prom,...
      t10_prom, t11_prom, t12_prom, t13_prom, t14_prom];
y = [0.85 0.813 0.765 0.69 0.655 0.625 0.58 0.545 0.51 0.47 0.43 0.34 0.29 0.118];
plot(x,y,'b*')
plot(3.5,y_curva(3.5),'mo')
hold on
plot(2.5,y_curva(2.5),'mo')
plot(4.5,y_curva(4.5),'mo')
xlabel('x')
ylabel('y')
grid

%%%%GRAVEDAD%%%%
g=alfa2*2

