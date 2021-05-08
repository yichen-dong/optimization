syms x y;
c = [x;y];
Q = [2 1;
    1 2];
expand(transpose(c)*Q*c)
eig(Q)