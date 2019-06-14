n = size(C,1);
s = full(sum(C,1));
f = double(s<>0);
s(s==0) = 1;
lambda = 1./s';
e = ones(n,1);
x = ones(n,1)/n;
q = 0.85;
for i = 1 : 50
    y = q*(C*(lambda*x)) + (1/n)*e*((e-q*f)'*x);
    vp = x'*y;
    x = y/norm(y);
end

x = x/sum(x);
[xs,k] = gsort(x);
Us = U(k);
row = grep(Us, "mecanique");
disp(Us(row));
disp(xs(row));
