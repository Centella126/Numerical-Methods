%38.- Let x = [3 16 9 12 -1 0 -12 9 6 1]. Provide the command(s) that will:
    % 1)Set the positive values of x to zero;
    % 2)Set values that are multiples of 3 to 3 (make use of rem);
    % 3)Multiply the even values of x by 5;
    % 4)Extract the values of x that are greater than 10 into a vector 
    % called y;
    % 5)Set the values in x that are less than the mean to 0;
    % 6)Set the values in x that are above the mean to their difference 
    % from the mean.

clear all
clc

x = [3 16 9 12 -1 0 -12 9 6 1];
x1 = [3 16 9 12 -1 0 -12 9 6 1];  %Para no modificar los datos de x
x2 = [3 16 9 12 -1 0 -12 9 6 1];
x3 = [3 16 9 12 -1 0 -12 9 6 1];
x4 = [3 16 9 12 -1 0 -12 9 6 1];
x5 = [3 16 9 12 -1 0 -12 9 6 1];

% 1)
for i=1:1:10
    if x(i)>0
        x1(i)=0;
    end
end
disp('1) Set the positive values of x to zero'), x1

% 2)
for i=1:1:10
    z(i)=rem(x(i),3);
    if z(i)>0
        a=3-z(i);
        x2(i)=a+x(i);
    end 
    if z(i)<0
        a=3+z(i);
        x2(i)=-a+x(i);
    end 
end
disp('2)Set values that are multiples of 3 to 3'), x2

% 3)
for i=1:1:10
    if rem(x(i),2)==0;
        x3(i)=x3(i)*5;
    end
end
disp('3) Multiply the even values of x by 5'), x3

% 4)
k=0;
for i=1:1:10
    if x(i)>10;
        k=k+1;
        y(k)=x(i);
    end
end
disp (['4) Extract the values of x that are greater than 10 into ' ...
    'a vector called y']), y

% 5)
for i=1:1:10
    if x(i)<mean(x);
        x4(i)=0;
    end
end
disp('5) Set the values in x that are less than the mean to 0'), x4

% 6)
for i=1:1:10
    if x(i)>mean(x);
        x5(i)=x5(i)-mean(x);
    end
end
disp(['6) Set the values in x that are above the mean to their ' ...
    'difference from the mean']), x5
