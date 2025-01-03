function E=euler(f,a,b,ya,M)

%Input    - y'=f is the function 
%            - a and b are the left and right endpoints
%            - ya is the initial condition y(a)
%            - M is the number of steps
%Output - E=[T' Y'] where T is the vector of abscissas and
%            - Y is the vector of ordinates

%If f is defined as an M-file function use the @ notation
% call E=euler(@f,a,b,ya,M).
%If f is defined as an anonymous function use the
% call E=euler(f,a,b,ya,M).

%  NUMERICAL METHODS: Matlab Programs
% (c) 2004 by John H. Mathews and Kurtis D. Fink
%  Complementary Software to accompany the textbook:
%  NUMERICAL METHODS: Using Matlab, Fourth Edition
%  ISBN: 0-13-065248-2
%  Prentice-Hall Pub. Inc.
%  One Lake Street
%  Upper Saddle River, NJ 07458

h=(b-a)/M;
T=zeros(1,M+1); %Se vectoriza el tiempo y la solución, porque se tarda mucho con un ciclo for
Y=zeros(1,M+1);
T=a:h:b;    %De a a b con h tamaño
Y(1)=ya;

for j=1:M
   Y(j+1)=Y(j)+h*f(T(j),Y(j));
end

E=[T' Y'];

