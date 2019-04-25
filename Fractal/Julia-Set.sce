x = linspace(-2,2,600);
y = linspace(-2,2,600);
[X,Y] = meshgrid(x,y);
Z = complex(X,Y);
c = -0.4 + 0.6*%i;
G = ones(Z);
for i = 1 : 300
        Z = Z.^2 + c;
        //Z = Z.^2 + (Z.^5)/(2+4*Z) + c;
        G(abs(Z) < 2) = G(abs(Z) < 2) + 1; 
end

clf
c = jetcolormap(201)
set(gcf(),"color_map",c)
plot(x(1),y(1),x($),y($))        // $ : last index of array
Matplot1(G,[x(1) y($) x($) y(1)])
