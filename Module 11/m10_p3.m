v = [1 2 3];

c=toeplitz([v(1) fliplr(v(2:end))], v);% create circulant matrix 

% c = [1 2 3;
%     3 1 2;
%     2 3 1];

[V,D]=eig(c); % find eigenvectors V and eigenvalues (in diagonal matrix, D)
eig(c)

evec=(1/real(V(2,2))).*V % scale the eigenvectors to match the question

v = [5 3 2];

c=toeplitz([v(1) fliplr(v(2:end))], v);% create circulant matrix 

% c = [1 2 3;
%     3 1 2;
%     2 3 1];

[V,D]=eig(c); % find eigenvectors V and eigenvalues (in diagonal matrix, D)

evec=(1/real(V(2,2))).*V% scale the eigenvectors to match the question
eig(c)