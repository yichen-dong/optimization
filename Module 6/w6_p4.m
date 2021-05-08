x = [-3;5];

s = [0 0 inf inf;0 inf inf 0];

s_1 = [-inf -inf inf inf;-inf inf inf -inf];

transpose(-s)*x

max(-s.'*x)
max(s_1.'*x)