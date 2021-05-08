syms u x1 x2 x3 x4;
f = x1*(u - 0.2) + x2*(u-.5) + x3*(u-.4) + x4*(u-.1) - 5*u;
x1 = 3;
x2 = 1;
x3= 2;
x4 = 3;
subs(f)
x4 = 0;
subs(f)
x1 = 0;
subs(f)
x3= 0;
subs(f)
x2 = 0;
subs(f)