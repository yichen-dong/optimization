syms x1 x2;

x=[x1;x2];

Q=[10 1;1 4];

b=[-3;-2];

p=.5*transpose(x)*Q*x+transpose(b)*x;

del = gradient(p)

x1 = .3;
x2 = .5;

subs(p)

Q*x