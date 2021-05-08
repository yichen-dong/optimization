%% Problem 7-9
x_1 = [-1.1,-1,-.9,-.8,-.6,-.6,-.2,-.2,.1,.2];
y_1 = [-4,-3,-4,-2,-2,-.7,.5,3.1,2.9,4.8];

X = [ones(length(x_1),1) transpose(x_1)];
b = X\transpose(y_1)
hold on;
scatter(x_1,y_1)
axis([-2 2 -10 10]);
fplot(@(x_1) b(1) + b(2)*x_1)
hold off;