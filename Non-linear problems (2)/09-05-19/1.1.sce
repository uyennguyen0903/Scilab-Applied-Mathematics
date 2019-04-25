x1 = -1 : .02 : 1;
x2 = -0.5 : .02 : 1.5;
[X1, X2] = ndgrid(x1, x2);
Z = (1 - X1).^2 + (10 * (X2 - X1.^2)).^2; 
xtitle('Rosenbrock function');
//mesh(X1, X2, Z);
clf;
contour(x1, x2, Z,  [0.1, 1 : 10 : 100]);
//////////////////////////////////////////////////////////////////
x1 = -1 : .005 : 1;
x2 = -0.5 : .005 : 1.5;
[X1, X2] = ndgrid(x1, x2);
Z = (1 - X1).^2 + (10 * (X2 - X1.^2)).^2; 
title('Rosenbrock function');
//mesh(X1, X2, Z);
clf;
contour2d(x1, x2, Z,  [0.1:1:6]);
