f = @(x) x + log(2*x) + sin(3*x)+cos(4*x);

f_d = @(x) 1 + 1/x + 3*cos(3*x) - 4*sin(4*x);

f_d2 = @(x) -1/x^2 - 16*cos(4*x) - 9*sin(3*x);

quad = @(x) f(x) + f_d(x)

newton = @(x)x - (1 + 1/x + 3 * cos(3*x) - 4 * sin(4*x)) / (-1/(x^2) - 9 * sin(3*x) - 16 * cos(4*x));
x_0 = 4.5;
x_1 = newton(x_0);
A = f_d2(x_1)/2
B = f_d(x_1)
C = f(x_1)

hold on;
fimplicit(@(x,y)x + log(x.*2) + sin(x.*3) + cos(x.*4) - y, [4 5 4 10])

fimplicit(@(x,y)A * (x-newton(4.5)).^2 + B * (x-newton(4.5)) + C - y, [4 5 4 10])

squ = @(x) -(A * (x-newton(4.5)).^2 + B * (x-newton(4.5)) + C);

fminunc(squ,x_1)