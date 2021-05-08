syms x y z;
f = x^5 + y^4 + z^3 + x*y^2 + y*z +1;
h = hessian(f);
x = 1;
y=1;
z = -1;
subs(h)
%The diagonals are not all positive or negative