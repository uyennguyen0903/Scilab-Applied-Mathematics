N=500
eps=1e-15
plot([-1 1],[-1 1],".")
[X,Y]=meshgrid(linspace(-1,1,N))
Z=X+%i*Y
s1=1
s2=(-1+%i*sqrt(3))/2
s3=(-1-%i*sqrt(3))/2
for i=1:N
    Z=2/3*Z+(1/3)*Z.^(-2)
    C= ones(N,N)*color("white")
    C(abs(Z-s1)<eps)=color("green")
    C(abs(Z-s2)<eps)=color("red")
    C(abs(Z-s3)<eps)=color("blue")
    Matplot(C,rect=[-1 -1 1 1])
end
