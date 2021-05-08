c = [0 1 0 0 0 0 0 0 0 0 1];
n=11;
lambda = zeros(n,1);
for m = 0:n-1
   for i = 1:(n-1)/2
       lambda(m+1) = lambda(m+1) + 2*c(i+1)*cos(2*pi*m*i/n);
   end
end
lambda
c_mat = toeplitz([c(1) fliplr(c(2:end))], c);
eig(c_mat)