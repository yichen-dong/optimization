n=50;

rng(0);

W = randi(2, n);

W=W'+W;

W(W>2)=1;

W(W==2)=-1;

x = -1*ones(n,1);

cur_value = x'*W*x;

c=0;

loop=true;

while loop

    c=c+1;

    new_values = cur_value*ones(1,n);

    for i=1:n

        x_new = x;

        x_new(i)=-1*x_new(i);

        new_values(i) = x_new'*W*x_new;

    end

    [best_value,index] = min(new_values);

    if best_value<cur_value

        x(index)=-1*x(index);

        cur_value=best_value;

    else

        loop=false

    end

end
x.'*W*x