f = [-1 -2 -3];
A = [1 -5 -3;
    1 1 1];
b = [1 100];
lb = [0 0 0];
intcon = [1 2 3]
[x, fval] = intlinprog(f,intcon,A,b,[],[],lb)