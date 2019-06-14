s = full(sum(C,1));
f = double(s<>0)';
s(s==0) =1;
lambda = 1./s';
q = 0.85;
n = 1395;
x = ones(n,1)/n;
e = ones(n,1);

for i = 1 :50
    x1 = x.*lambda;
    x1 = q*(C*x1);
    //y = x1 + 1/n*e*((e-q*f)'*x);
    y = q*(C*(x.*lambda))+1/n*e*((e-q*f)'*x);
    vp = x'*y;
    x=y/norm(y);
end

x = x/sum(x);
[xs,k] = gsort(x)
Us = U(k);
row = grep(Us,"mecanique");
disp(Us(row))
disp(xs(row))
