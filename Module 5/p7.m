syms a1 a2;
x = [a1+a2;-10*a2];
Q = [10 1; 1 4];
b = [-3;-2];

p = 1/2*transpose(x)*Q*x +transpose(b)*x;
expand(p);

del = gradient(p)
a1 = vpasolve(del(1));
a2 = vpasolve(del(2));

subs(p)
%%%%%%%%%%%%%%%%%%%%%%%
quadprog(Q,b)