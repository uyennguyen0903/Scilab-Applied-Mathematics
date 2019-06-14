function out = g(x)
    out = [1 - x(1)
           10*(x(2) - x(1)^2)];
endfunction

function jac = gprime(x)
    jac = [-1,0
           -20*x(1),10];
endfunction

function y = grad(x)
    y = gprime(x)'*g(x);
endfunction

x = zeros(2,4000);
x(:,1) = [0.5;1.5];
lambda = 200; // 300

for k = 1 : 3999
    x(:,k+1) = x(:,k)-1/lambda*grad(x(:,k));
end
//Tracer les courbes iso-valeurs
x1 = -1 : .005 : 1.5;
x2 = -0.5 : .005 : 1.5;
[X1, X2] = ndgrid(x1, x2);
Z = (1 - X1).^2 + (10 * (X2 - X1.^2)).^2; 
xtitle('Rosenbrock function');
//mesh(X1, X2, Z);
clf;
contour(x1, x2, Z,  [0.1:1:6]);
//Afficher x_k,x_k+1
plot(1,1,'xr');
plot(x(1,:),x(2,:),'-o');
disp(x(1,$),x(2,$));
