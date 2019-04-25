function out = g(x)
    out = [1 - x(1)
           10*(x(2) - x(1)^2)];
endfunction

function jac = gprime(x)
    jac = [-1,0
           -20*x(1),10];
endfunction

function out = grad(x)
    out = gprime(x)'*g(x);
endfunction

x = zeros(2,4000);
x(:,1) = [0.5;1.5];
lambda = 0.01; // 10 0.1
I = eye(2,2);

for k = 1 : 3999
    jac = gprime(x(:,k));
    gradient = grad(x(:,k));
    x(:,k+1) = x(:,k)-(jac'*jac+lambda*I)\gradient;
    if (norm(gradient)) < 1e-6
        disp(k+1)
        break;
    end;
end
//...........................................//
x1 = -1 : .005 : 1.5;
x2 = -0.5 : .005 : 1.5;
[X1, X2] = ndgrid(x1, x2);
Z = (1 - X1).^2 + (10 * (X2 - X1.^2)).^2; 
xtitle('Rosenbrock function');
//mesh(X1, X2, Z);
clf;
contour(x1, x2, Z,  [0.1:1:6]);
//..........................................//
plot(1,1,'xr');
plot(x(1,1:k),x(2,1:k),'-o');

