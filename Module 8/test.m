f = [-12 -32 -90 -95 -82 -18 -15];

A = [1 1 1 1 2 1 1

    3.4 1.5 6.3 3.2 7.8 1.3 8.7

    2 2 2 2 3 2 2

    5 4 3 1 12 11 7

    1 0 2 6 1 3 2];

b = [6 30 12 25 10];

Aeq = [];

beq = [];

lb = [0 0 0 0 0 0 0];

ub = [1 1 1 1 1 1 1];

[x,fval]=linprog(f,A,b,Aeq,beq,lb,ub)