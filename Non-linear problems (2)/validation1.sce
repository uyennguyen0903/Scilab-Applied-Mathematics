clf;
n = size(t, 1);
V = find(t > -1 & t < 1);
T = setdiff(1:n, V);
scf(0);
plot(t(T), y(T), 'bo', t(V), y(V), 'or');
legend("Ensemble des points de T","Ensemble des points de V");
scf(1);
A_T = [ones(t(T))];
A_V = [ones(t(V))];
sT = [];
sV = [];
p = [];
for i = 1 : 8
    A_T = [A_T, t(T).^i];
    theta = A_T\y(T);
    A_V = [A_V, t(V).^i];
    E_T = y(T) - A_T * theta;
    E_V = y(V) - A_V * theta;
    m = size(T, 1);
    sT = [sT,0];
    for j = 1 : m
        sT(i) = sT(i) + E_T(j,1).^2;
    end;
    sV = [sV,0];
    l = size(V, 1);
    for h = 1 : l
        sV(i) = sV(i) + E_V(h,1).^2;
    end;
    
    p = [p, i];
end;
plot(p,sV,'bo-',p,sT,'ro-');
legend("validation","apprentissage");
