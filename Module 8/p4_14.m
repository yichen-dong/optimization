f = -[0.2 0.5 0.4 0.1];

A = [1 1 1 1;    0.2 0 0 0;    0 0.5 0 0;    0 0 0.4 0;    0 0 0 0.1];

b = [5; 0.7; 0.8; 0.9; 0.3];

[xvals4, fval4] = linprog(f,A,b,[],[],[0 0 0 0])

%problem 5 
lb = [0 0 0 0];
ub = [1 inf inf inf];
[xvals5, fval5] = linprog(f,A,b,[],[],lb,ub)

%problem 6 
lb = [0 0 0 0];
ub = [1 1 inf inf];
[xvals6, fval6] = linprog(f,A,b,[],[],lb,ub)

%problem 7 
lb = [0 0 0 0];
ub = [1 1 2 inf];
[xvals7, fval7] = linprog(f,A,b,[],[],lb,ub)

%problem 8 
lb = [0 0 3 0];
ub = [1 1 inf inf];
[xvals8, fval8] = linprog(f,A,b,[],[],lb,ub)

%problem 9 
lb = [0 2 0 0];
ub = [1 inf inf inf];
[xvals9, fval9] = linprog(f,A,b,[],[],lb,ub)

%problem 10 
lb = [2 0 0 0];
ub = [inf inf inf inf];
[xvals10, fval10] = linprog(f,A,b,[],[],lb,ub)

%problem 11 
lb = [2 0 0 0];
ub = [inf 1 inf inf];
[xvals11, fval11] = linprog(f,A,b,[],[],lb,ub)

%problem 12 
lb = [2 2 0 0];
ub = [inf inf inf inf];
[xvals12, fval12] = linprog(f,A,b,[],[],lb,ub)

