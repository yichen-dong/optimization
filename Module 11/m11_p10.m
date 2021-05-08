v = [0 1 0 0 0 0 0 0 0 0 1];
A = toeplitz([v(1) fliplr(v(2:end))], v)
idx = [1 2 3 7 8 11 9 10 5 4 6];
B = X1(:,idx);
C = B(idx,:)