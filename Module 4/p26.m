syms x y a;

fun = (x^2 + y^2 - 9)^2 + (x+3)^2;
grad_fun = gradient(fun);
hess_fun = hessian(fun);

x_0 = [ 0, 3];
for i = 1:10
    x = x_0(1);
    y = x_0(2);
    d = -inv(subs(hess_fun))*subs(grad_fun);
    x = x+a*d(1);
    y = y+a*d(2);
    g = subs(fun);
    alpha = fminunc(matlabFunction(g),0); 
    x_0 = double(x_0 + alpha*transpose(d))
end

