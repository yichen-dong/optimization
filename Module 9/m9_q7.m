%% Making cost matrix
i = [1 1 2 3 3 3 4 4 5 5 6 6 7 7 8 9 9]; %column of cost (for below diagonal)
j = [2 6 3 4 5 7 5 7 6 8 9 10 8 11 9 10 11]; %row of cost (for below diagonal)
cost = [36 40 27 20 17 30 15 46 27 45 55 40 19 46 26 21 48]; %cost that is associated with column and row
from = [i j]; %Columns for the cost
to = [j i]; %Rows for the cost
c = [cost cost]; %cost values to be placed
n = size(c, 2); %size returns two values. The second one is the number of columns
ind = sparse(from, to, 1:n); %creates a sparse matrix with the correct cost value
%% Making Aeq and beq
beq = [8 0 0 0 2 0 0 0 0 0 -10]'; %the outflow from 1 and 5, and intake in 10
Aeq = zeros(size(beq, 1), n); %Creating a matrix with the rows the size of the cost, columns the size of variables

for k = 1:n %First setting the outputs for each edge from a node to 1, then the inputs to -1

   Aeq(from(k), k) = 1 %looping through k, setting the row in the kth index of from to 1

   Aeq(to(k), k) = -1

end

Aeq = Aeq(1: size(beq, 1)-1, :); %subsetting Aeq to 1-8 rows for some reason

beq = beq(1: size(beq, 1)-1); %subestets beq to 1-8

%% Setting up lower bound and A
A = zeros(4, n); %Creating a 4 row, n column empty matrix

A(1, ind(3,7)) = 1; %setting the route from 3 to 7 to be less than or equal to 1

A(2, ind(7,3)) = 1; %same for 7 to 3
 
A(3, ind(9,11)) = 1; %same for 9 to 11

A(4, ind(11,9)) = 1; %same for 11 to 9

b = [1 1 1 1]';

lb = zeros(1, n); %x_i for the 34 variables has lb 0

ub = repmat(Inf, 1, n); %x_i for the 34 variables has ub inf

[X,fval] = linprog(c, A, b, Aeq, beq, lb, ub)