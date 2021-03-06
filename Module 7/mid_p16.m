%% Problem 16-21
syms x1 x2;
a = [-4.7,-2.9,-1.3,-1,-.3,1.1,1.5,2.8,3.8,4.7];
b = [1.6,1.8,1.6,.5,-.2,-.8,-1.5,-1.8,-1.7,-1.7];
f = 0;
for i = 1:10
    f = f + (x1*sin(a(i)*x2)-b(i))^2;
end
g;
hold on;
fimplicit(f == 1)
axis([-7 7 -1.5 1.5])
fimplicit(f == 5, '-o')
fimplicit(f == 10, '--')
fimplicit(f == 25 ,'b')
fimplicit(f == 50 ,'r')
hold off;
%fimplicit(@(z,x1,x2) (-z + (x1*sin(x2) + 1/2)^2 + (x1*sin((3*x2)/2) + 3/2)^2 + (x1*sin((3*x2)/10) - 1/5)^2 + (x1*sin((11*x2)/10) + 4/5)^2 + (x1*sin((14*x2)/5) + 9/5)^2 + (x1*sin((13*x2)/10) + 8/5)^2 + (x1*sin((19*x2)/5) + 17/10)^2 + (x1*sin((29*x2)/10) + 9/5)^2 + (x1*sin((47*x2)/10) + 8/5)^2 + (x1*sin((47*x2)/10) + 17/10)^2)
%ginput(1)
x1 = 1.9839;
x2 = -0.4548;
vpa(subs(f))

%% Problem 22-25
syms k1 k2;
a_1 = [-4.7, -2.9, -1.3, -1, -.3, 1.1, 1.5, 2.8, 3.8, 4.7];
b_1 = [1.6, 1.8, 1.6, .5, -.2, -.8, -1.5, -1.8, -1.7, -1.7];
g_1 = [];
f_1 = 0;
v = [k1 k2];
for i = 1:10
    f_1 = f_1 + (k1*sin(a_1(i)*k2)-b_1(i))^2;
    g_1 = [g_1 , (k1*sin(a_1(i)*k2)-b_1(i))];
end
J = jacobian(g_1,[k1 k2]);
hessian = 2*transpose(J)*J;
k1 = 1.9839;
k2 = -0.4548;
for i = 1:5
    %update = inv(transpose(J)*J)*transpose(J)*transpose(g_1);
    update = (transpose(J)*J)\transpose(J)*transpose(g_1);
    dx = vpa(subs(update));
    k1 = k1 - dx(1);
    k2 = k2 - dx(2);
end

k1
k2
sum(subs(f_1))
%test = gradient(g_1)
clf
hold on;
scatter(a_1,b_1)
fplot(@(x)k1*sin(k2*x))
hold off;
