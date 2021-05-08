c=10^-4;

f = @(x) 1000/(x(1)+x(2)) + (x(1)-4)^2 +(x(2)-10)^2;

grad_f = @(x) [-1000/(x(1)+x(2))^2 + 2*(x(1)-4) ;-1000/(x(1)+x(2))^2 + 2*(x(2)-10)];

d=0;

x = [3;1];

grad_old = 1;

 

 

grad_new = grad_f(x)

d = -1*grad_new+(norm(grad_new)^2/norm(grad_old)^2)*d

grad_old = grad_f(x)

t = -c*d'*grad_new

a = 2

while f(x)-f(x+a*d)<a*t

    a = a/2

end

x = x+a*d

x
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

grad_new = grad_f(x)

d = -1*grad_new+(norm(grad_new)^2/norm(grad_old)^2)*d

grad_old = grad_f(x)

t = -c*d'*grad_new

a = 2

while f(x)-f(x+a*d)<a*t

    a = a/2

end

x = x+a*d

x