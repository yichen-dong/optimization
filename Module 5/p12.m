Q = [10 1; 1 4];
u = [1 ; 0];
v = [0 ; 1];
-v + (transpose(v)*Q*u)/(transpose(u)*Q*u)*u