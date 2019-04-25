n = size(C, 1);
s = sum(C , 1);
s(s <> 0) = 1../s(s <> 0);
lambda = diag(s);
e = ones(n , 1);
f = ones(n , 1);
f(s == 0) = 0;
x = ones(n,1)/n;
q = 0.85;

for k = 1 : 50
    y = q * C * lambda * x + (1/n) * e * (e - q * f)' * x;
    vp = x' * y;
    x = y / norm(y); 
end

x = x/sum(x);
[xs,k] = gsort(x)
Us = U(k);
row = grep(Us,"mecanique");
disp(Us(row))
disp(xs(row))
