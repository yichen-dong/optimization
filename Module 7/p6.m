%% Problem 5 and 6
x=[-.9,-.6,-.4,-.4,-.1,0,0.4,0.5,0.6,.6];
y=[-3.9,-3.8,-2.9,-1.1,-.9,.7,1.2,1.8,2.3,3.9];
hold on;
scatter(x,y)
axis( [-1 1 -10 10]);
slope = transpose(x)\transpose(y)
fplot(@(x) slope*x)
hold off;




