syms a;

fun = @(x,y) (x^2 + y^2 - 9)^2 + (x+3)^2;

df_x = @(x,y) 4*x^3 + 4*x*y^2 - 34*x + 6;
df_y = @(x,y) 4*y * (x^2+y^2-9);

x_0 = [0 3];
for i = 1:10
    d = -[df_x(x_0(1),x_0(2)),df_y(x_0(1),x_0(2))]
    g = fun(x_0(1)+a*d(1),x_0(2)+a*d(2));
    alpha =  fminunc(matlabFunction(g),0);
    x_0 = x_0 + alpha*d;
end
x_0
fun(x_0(1),x_0(2))