syms x1 x2;
Q = [1 2;2 3];
x = [x1;x2];

f = 1/2*transpose(x)*Q*x;
%f_grad = gradient(f);
f_hess = hessian(f);
d = simplify(transpose(x)*f_hess*x)
