syms d2_2;
Q = [10 1; 1 4];
d1 = [1;0];
d2 = [1; d2_2];
solve(transpose(d1)*Q*d2 ==0, d2_2)