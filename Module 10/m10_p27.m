n=10;
I = eye(n);
J = ones(n, n);
D = [0 36 55 40 55 40 85 100 90 78;
36 0 27 24 37 42 55 73 72 67;
55 27 0 20 17 40 30 45 47 48;
40 24 20 0 15 21 46 59 52 44;
55 37 17 15 0 27 35 45 35 30;
40 42 40 21 27 0 62 70 55 40;
85 55 30 46 35 62 0 19 34 47;
100 73 45 59 45 70 19 0 26 45;
90 72 47 52 35 55 34 26 0 21;
78 67 48 44 30 40 47 45 21 0];
cvx_begin
variable X1(n,n) symmetric;
variable X2(n,n) symmetric;
variable X3(n, n) symmetric;
variable X4(n, n) symmetric;
variable X5(n, n) symmetric;
minimize (1/2*trace(D*X1));
X1>=0; X2>=0; X3>=0; X4>=0; X5>=0;
X1+X2+X3+X4+X5==J-I;
for i = 1:5
    I + cos(2*pi*i*1/n)*X1 + cos(2*pi*i*2/n)*X2 + cos(2*pi*i*3/n)*X3 + cos(2*pi*i*4/n)*X4 + cos(2*pi*i*5/n)*X5 == semidefinite(n);
end
cvx_end