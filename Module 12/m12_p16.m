syms a b c;
x = -1;
y = 0;
f = a*x^2 + 2*b*x*y + c*y^2==1
x= 0;
y = .4;
f_1 = a*x^2 + 2*b*x*y + c*y^2==1;
solve(f_1,c)
x= .5;
y = -.3;
f_2 = 1*x^2 + 2*b*x*y + 6.25*y^2==1;
solve(f_2,b)
fimplicit(@(x1,y1) x1^2- 2*0*x1*y1 + 6.25*y1^2 - 1)