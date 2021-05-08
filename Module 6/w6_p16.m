%Q16
x = sym('x',[2 1]);
c = sym('c',[2 1]);
Q = sym('Q',[2 2]);
b = sym('b',[2 1]);
y = sym('y',[2 1]);
s = sym('s',[2 1]);
A = sym('A',[2 2]);
ans1 = c'*x+1/2*x'*Q*x-(b'*y-1/2*x'*Q*x);
ans2 = c'*x+x'*Q*x-b'*y;
simplify(ans1-ans2)
x = simplify(inv(Q)*(s+A'*y-c));
ans3 = c'*x+x'*Q*inv(Q)*(s+A'*y-c)-b'*y;
ans4 = c'*x+x'*(s+A'*y-c)-b'*y;
simplify(ans3-ans4)
ans5 = c'*x+x'*s+x'*A'*y-x'*c-b'*y;
simplify(ans5-ans4)
ans6 = c'*x-x'*c+x'*s+x'*A'*y-b'*y;
simplify(ans5-ans6)
ans7 = (x'*s+(x'*A'-b')*y)';
simplify(ans7-ans6);
ans8 = s'*x+y'*(A*x-b);
simplify(ans7-ans8)
ans9 = s'*x+y'*0;
x = sym('x',[2 1]);
s'*x;
simplify(real(x'*s-s'*x))
