i = [1 1 2 3 3 3 4 4 5 5 6 6 7 7 8 9 9];
j = [2 6 3 4 5 7 5 7 6 8 9 10 8 11 9 10 11];
cost = [10 12 7 2 7 1 5 6 7 5 5 4 9 20 6 1 1];
from = [i j];
to = [j i];
c = [cost cost];
n = size(c, 2);
ind = sparse(from, to, 1:n)

%Create max flow objective function
max_flow = zeros(size(c,2),1)
max_flow(ind(1,2)) = 1;
max_flow(ind(1,6)) = 1;
max_flow(ind(5,3)) = 1;
max_flow(ind(5,4)) = 1;
max_flow(ind(5,6)) = 1;
max_flow(ind(5,8)) = 1;

%The equalities for flow in and flow out remain the same. 
beq = [8 0 0 0 2 0 0 0 0 0 -10]';
Aeq = zeros(size(beq, 1), n);

for k = 1:n

   Aeq(from(k), k) = 1;

   Aeq(to(k), k) = -1;

end

%I think we want all of the equality constraints, so no filtering to 8x8
%matrix. 

%need to redo the inequalities to take into account the matrix
%no longer just 4 I guess
A = zeros(n, n);

%I guess this ended up just being an identity matrix
for k =1:n
    A(k, ind(from(k),to(k))) = 1;
end

b = c;

lb = zeros(1, n);

ub = repmat(Inf, 1, n);

[X,fval] = linprog(max_flow, A, b, Aeq, beq, lb, ub)