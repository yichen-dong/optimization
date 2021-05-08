fun=@(x) (x(1)^2+x(2)^2-9)^2 + (x(1) + 3)^2;
val=fminsearch(fun,[0,3]);
min=fun(val)
val