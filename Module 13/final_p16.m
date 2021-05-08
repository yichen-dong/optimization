Q = [2 1;
    1 2];
A = [3 1;
    -3 4];
b = [5;3];
c= [0,0];
[x,fval] = quadprog(Q,c,A,b)
Qd = inv(Q);
cd = -c*inv(Q);
[xd,fvald] = quadprog(Qd,cd,A,b)
Q1 = [1 2;
    2 1];
Qd1 = inv(Q1);
[x1,fval1] = quadprog(Q1,c,A,b)
[xd1,fvald1] = quadprog(Qd1,c,A,b)
fval1 - fvald1