Q = [2 1; 1 2];
c = [-2;-3];
y = @(s) -((-1/2) * s'*inv(Q)* s + c'* inv(Q) * s - (1/2)*c'* inv(Q) * c);
A = [];
b = [];
s0 = [0;0];
[s,fval] = fmincon(y,s0,A,b)

fsurf(@(x,y) x*(x/3 - y/6) - (4*y)/3 - x/3 - y*(x/6 - y/3) + 7/3)