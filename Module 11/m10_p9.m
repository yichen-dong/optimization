A = [0 3 1 1 0; 0 5 0 6 2; 1 0 4 0 1; 1 1 0 -2 0; 0 -3 1 0 1];
idx = [1 2 3 5 4];
B = A(:,idx);
C = B(idx,:);
eig(A)
eig(B)
eig(C)
