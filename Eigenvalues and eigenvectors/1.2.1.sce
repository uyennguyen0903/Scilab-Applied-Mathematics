// [d,p] = spec(A)  d = valeurs propres, p = vecteurs prop

k1 = 5; k2 = 10;
m1 = 0.1; m2 = 0.1;

A = [ (k1+k2)/m1, -k2/m1
       -k2/m2,    k2/m2];

//algorithme de la puissance
x1 = rand(2,1);
for k = 1 : 100
    y = A*x1;
    lambda1 = x1'*y;
    if norm(y-lambda1*x1) < 1e-10
        x1 = y/norm(y);
        break
    end
    x1 = y/norm(y);
end

//algorithme de la puissance inverse
x2 = rand(2,1);
for k = 1 : 100
    y = A\x2;
    lambda2 = x2'*y;
    if norm(y-lambda2*x2) < 1e-10
        x2 = y/norm(y);
        break
    end
    x2 = y/norm(y);
end
lambda2 = 1/lambda2;
disp(lambda1,lambda2);
[d,p] = spec(A);
disp(d,p);
