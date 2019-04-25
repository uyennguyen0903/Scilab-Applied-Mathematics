function y = f(x)
    y = x^2 - 2;
endfunction

function y= g(x)
    y = (x+2)/(x+1);
endfunction

x = 1.5;  
y = 1;
for k = 1 : 100
    if abs(f(x(k))) < 1e-10
        break
    end
    y(k+1) = k+1;
    x(k+1) = g(x(k));
end
disp(k)
disp(x)
//clf
//e_ptfixe = abs(x-sqrt(2));
e_ptfixe = x;
plot(y,e_ptfixe,'-or')  // r :  red
