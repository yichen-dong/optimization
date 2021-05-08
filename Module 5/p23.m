syms x y L;
ob = x*y^2;
f1 = 2*x^2 + 3*y^2 -1.01
x = 3*L;
y = sqrt(12*L^2);
f2 = subs(f1)
L = max(vpasolve(f2))
x = subs(x)
y = subs(y)
subs(ob)