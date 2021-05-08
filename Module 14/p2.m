n=7;

rng(0);

W = randi(2, n);

W=W'+W;

W(W>2)=1;

W(W==2)=-1;

y = [];

x = [1 1 1 1 1 1 1];

count = 1;

y = zeros(n^2,1);

for i = 1:2

   for j = 1:2

       for k = 1:2

           for l = 1:2

               for m = 1:2

                   for n = 1:2

                       for o = 1:2

                           x = [2*i-3 2*j-3 2*k-3 2*l-3 2*m-3 2*n-3 2*o-3];

                           y(count) = x*W*x.';

                           count = count + 1;

                       end

                   end

               end

           end

       end

   end

end

min(y)