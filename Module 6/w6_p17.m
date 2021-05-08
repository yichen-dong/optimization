syms s1 s2;

syms x1 x2;

x = [x1;x2];

s = [s1;s2];

Q = [2 1; 1 2];

c = [-2;-3];

ex1 = transpose(c)*x+1/2*transpose(x)*Q*x;
ex11 = @(x) x(1)*(x(1) + x(2)/2) - 3*x(2) - 2*x(1) + x(2)*(x(1)/2 + x(2));
[xvals,fval] = fminunc(ex11,[0,0]) %p18
feval(ex11,[1,1]) %p22
fsurf(ex1)

[xvals, fval] = quadprog(Q,c)

lagrange =(-1/2*transpose(s)*inv(Q)*s - transpose(c)*inv(Q)*s -1/2*transpose(c)*inv(Q)*c)
%fsurf(lagrange);


test = @(s)-(s(1).*(1.0./3.0)+s(2).*(4.0./3.0)-s(1).*(s(1).*(1.0./3.0)-s(2).*(1.0./6.0))+s(2).*(s(1).*(1.0./6.0)-s(2).*(1.0./3.0))-7.0./3.0);
test2 =@(s) s(1)*(s(1)/3 - s(2)/6) - (4*s(2))/3 - s(1)/3 - s(2)*(s(1)/6 - s(2)/3) + 7/3;

[xvals,fval] = fminunc(test2,[0,0]) %p19

%%
s1 = 2;
s2=3;
subs(lagrange)

s=[2;3];
-1/2*transpose(s)*inv(Q)*s - transpose(c)*inv(Q)*s -1/2*transpose(c)*inv(Q)*c
%%
