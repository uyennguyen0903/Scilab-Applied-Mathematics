n = size(Z, 1);
b = zeros(n*n, 1);
tmp = 0;
for i = 1 : n         //Construire matrice b;
    for j = 1 : n
        tmp = tmp + 1;
        b(tmp, 1) = Z(j, i);
    end
end
A = zeros(n * n, 4)
tmp = 0;
for i = 1 : n         //Construire matrice A;
    for j = 1 : n 
        tmp = tmp + 1;
        A(tmp,:) = [1, j, i, i*j];
    end
end
c = A\b;
res = A*c; 
tmp = 0;
for i = 1 : n        //Construire matrice Z~
    for j = 1 : n
        tmp = tmp + 1;
        ZZ(j,i) = res(tmp,1);
    end
end
set(gcf(),'color_map',jetcolormap(128)); 
grayplot(1:65,1:65,ZZ);    //Affichage l’image restaurée


