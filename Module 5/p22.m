syms x y;
hold on;
fimplicit(2*x^2 + 3*y^2 == 1, 'r',[0,10,-5,5])
fimplicit(x*y^2 == 0.1, '--b')
fimplicit(x*y^2 == 0.3, '--m')
fimplicit(x*y^2 == 0.5, '--g')