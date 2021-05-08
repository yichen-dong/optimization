%Question 18

n=7;

rng(0);

W = randi(2, n); 

W=W'+W;

W(W>2)=1; 

W(W==2)=-1;

e = ones(1,n);

 

cvx_begin

 

variables v(n);

 

maximize (-e*v);

 

W+diag(v) == semidefinite(n);

 

cvx_end