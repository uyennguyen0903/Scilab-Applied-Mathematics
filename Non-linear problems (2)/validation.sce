clf;
n = size(t, 1);
V = find(t > -1 & t < 1);
T = setdiff(1:n, V);
plot(t(T), y(T), 'bo', t(V), y(V), 'or');

y_T = y(T);
A_T = [ones(t(T)), t(T), t(T).^2]; // co the them bac cao hon vo day (vn thu bac 8)
theta = A_T\y_T;

A = [ones(t), t, t.^2]; // tuong tu
plot(t, A*theta, "k");

