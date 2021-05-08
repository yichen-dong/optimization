hold on;
fimplicit(@(x1,y1) x1^2+ 2*0*x1*y1 + 6.25*y1^2 - 1, [-1 1 -1 1],'--r')
fimplicit(@(x1,y1) 25/9*x1^2+ 2*3785/5292*x1*y1 + 100/49*y1^2 - 1,'--b')
fimplicit(@(x1,y1) 100/9*x1^2+ 2*(-3485/504)*x1*y1 + 25/4*y1^2 - 1,'--g')
%fimplicit(@(x1,y1) 11.3891*x1^2+ 2*(-5.9426)*x1*y1 + 9.6491*y1^2 - 1,'r')
fimplicit(@(x,y) [x y]*X*[x;y] -1)
hold off;