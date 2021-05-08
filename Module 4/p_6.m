f= @(x) x - (1 + 1/x + 3 * cos(3*x) - 4 * sin(4*x)) / (-1/(x^2) - 9 * sin(3*x) - 16 * cos(4*x));
f2= @(x) -(x - (1 + 1/x + 3 * cos(3*x) - 4 * sin(4*x)) / (-1/(x^2) - 9 * sin(3*x) - 16 * cos(4*x)));
x_1 = f(4.5)
x_2 = f(x_1)
x_3 = f(x_2)

%min_f = fminunc(f,4.5);

fun = @(x)(-(x(1)+log(2*x(1))+ sin(3*x(1))+cos(4*x(1))));
min_f = fminunc(fun,4.5);
x_3 - min_f
