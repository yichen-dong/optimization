n=100;
g=zeros(n,1);
f=zeros(n,1);
m=floor(n/2);
for i=1:n
for j = 1:min(i,m)
f(j)=g(j)*g((max([1,i-j])));
end
g(i) = max([i;f]);
end
Q27=g(25)