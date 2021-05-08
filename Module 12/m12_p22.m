syms a b c;
x = .3;
y = 0;
f = a*x^2 + 2*b*x*y + c*y^2==1;
a_s = solve(f,a)
x= 0;
y = .4;
f_1 = a*x^2 + 2*b*x*y + c*y^2==1;
c_s = solve(f_1,c)
x= -.5;
y = -.7;
f_2 = a_s*x^2 + 2*b*x*y + c_s*y^2==1;
b_s = solve(f_2,b)
hold on;
fimplicit(@(x1,y1) x1^2+ 2*0*x1*y1 + 6.25*y1^2 - 1, [-1 1 -1 1])
fimplicit(@(x1,y1) 25/9*x1^2+ 2*3785/5292*x1*y1 + 100/49*y1^2 - 1)
fimplicit(@(x1,y1) 100/9*x1^2+ 2*(-3485/504)*x1*y1 + 25/4*y1^2 - 1)
hold off;