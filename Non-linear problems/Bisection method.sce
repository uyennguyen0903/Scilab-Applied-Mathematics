function y = f(x)
        y = x^2 - 2;
endfunction

a = 1;
b = 2;
for k = 1 : 100
    x(k) = (a + b) / 2
    if f(a) * f(x(k)) < 0
        b = x(k);
    else 
        a = x(k);
    end
    y(k) = k;
    //disp(x(k),a,b);
    if abs(f(x(k))) < 1e-10
        break
    end
end
//clf
disp(k)
//disp(x) 
//e_dichot = abs(x-sqrt(2));
e_dichot = x;
plot(y,e_dichot,'-ob');
