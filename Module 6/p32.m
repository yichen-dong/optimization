syms x1 x2 x3;
temp = log(x1)+log(x2)+log(x3)
gradient(temp)

dx = sym('dx',[3 1]);
dy = sym('dy',[2 1]);

x = [1;1;1];
X_1 = [1;1;1];
X_2= [-1 0 0;
    0 -1 0;
    0 0 -1];
y = [1;1];
u = .5;
Q = [.1 .03 .07; 
    .03 .35 .01;
    .07 .01 .5];
A = [.1,.3,.4;
    1 1 1];
b= [.2;1];
c = [0;0;0]

A*dx;
b-A*x;
S = solve(A*dx == b-A*x,dx)
S.dx1
S.dx2
S.dx3
S1 = solve((-Q+u*X_2)*[S.dx1;S.dx2;S.dx3] + transpose(A)*dy == c + Q*x -transpose(A)*y - u*X_1,dy)
S1.dy1
S1.dy2
eqns = [A*dx == b-A*x,(-Q+u*X_2)*[S.dx1;S.dx2;S.dx3] + transpose(A)*dy == c + Q*x -transpose(A)*y - u*X_1];
S2 = solve(eqns,[dx dy])
%%
sigmas = [.1,0.03,.07;.03,.35,.01;.07,.01,.5]

mus = [.1;.3;.4]

[xvals,fval] = quadprog(sigmas,[0 0 0],[-1*mus.';1 1 1;-1 -1 -1],[-.2 1 -1])

vpa(sqrt((x(1)+S.dx1-xvals(1))^2 + (x(2)+S.dx2-xvals(2))^2 +(x(3)+S.dx3-xvals(3))^2 ))