x = linspace(-2,1,400);
y = linspace(-1.5,1.5,400);
[X,Y] = meshgrid(x,y);
C = complex(X,Y);
Z = C
G = ones(Z);
for i = 1 : 200
        Z = Z.^2 + C;
        G(abs(Z) < 2) = G(abs(Z) < 2) + 1; 
end

c = jetcolormap(201)
set(gcf(),"color_map",c)
plot(x(1),y(1),x($),y($))        
Matplot1(G,[x(1) y($) x($) y(1)])
