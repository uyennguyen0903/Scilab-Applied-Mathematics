clf;
n = 4000;
a = zeros(3,n);
b = zeros(3,n);
for p = 1 : n
       a(1,p) = ((2*%pi*p).^2)\-1;
       a(2,p) = ((p*%pi).^2)\-1;
       a(3,p) = 0;
       b(1,p) = (4*p*%pi)\-1;
       b(2,p) = 0;
       if (modulo(p,2) == 0) 
           b(3,p) = 0
       else 
           b(3,p) = ((%pi*p).^3)\8;
       end;
end
x = -1 : 0.001 : 1;
omega = [4*%pi, 2*%pi, %pi];
a0 = [1/3 , 1/3 , 0];
for i = 1 : 3
    S = zeros(x);
    for k = 1 : n
        S = S + a(i,k)*cos(k*omega(i)*x) + b(i,k)*sin(k*omega(i)*x);
    end
    S = S + a0(i)/2;
    if (i == 1) 
        plot(x,S,'r');
        
    else 
        if (i == 2) then
            plot(x,S,'b');
            
        else
            plot(x,S,'g'); 
            
        end
    end
end
legend('f1','f2','f3',4);
