A1 = [1 0
      0 6.25];
A2 = [25/9 3785/5292
    3785/5292 100/49];
A3 = [100/9 -3485/504;
    -3485/504 25/4];
W=[2 0;0 1];

cvx_begin

variable X(2,2) symmetric semidefinite

minimize trace(W*X)

X-A1 == semidefinite(2)

X-A2 == semidefinite(2)

X-A3 == semidefinite(2)

cvx_end

X(1,1)

fimplicit(@(x,y) [x y]*X*[x;y] -1)