function y = solution(t)
        y = 1- exp(-t.^2/2);
endfunction

function yprime = f1(t,y)
    yprime = -t*y+t;
endfunction

function y = euler(y0,t,f)
        n = length(t);
        y = zeros(1,n);
        h = t(2) - t(1);
        y(1) = y0;
        for i = 1 : n-1 
            y(i+1) = y(i) + h * f(t(i),y(i));
        end
endfunction

function y = eulerCauchy(y0,t,f)
        n = length(t);
        y = zeros(1,n);
        h = t(2) - t(1);
        y(1) = y0;
        for i = 1 : n-1 
            k1 = f(t(i),y(i));
            k2 = f(t(i)+h,y(i)+h*k1); // t(i) + h = t(i+1)
            y(i+1) = y(i) + h/2 * (k1+k2);
        end
endfunction

function y = pointMilieu(y0,t,f)
        n = length(t);
        y = zeros(1,n);
        h = t(2) - t(1);
        y(1) = y0;
        for i = 1 : n-1 
            k1 = f(t(i),y(i));
            k2 = f(t(i)+h/2,y(i)+h*k1/2); // t(i) + h = t(i+1)
            y(i+1) = y(i) + h*k2;
        end
endfunction


/////////////////////////
t = linspace(0,4,10);
y0 = 0;
clf
plot(t,euler(y0,t,f1),'-og');
plot(t,eulerCauchy(y0,t,f1),'-ob');
plot(t,pointMilieu(y0,t,f1),'-or');
plot(t,solution(t),'--om');
legend("Euleur","Euler-Cauchy","Point milieu","Solution exacte",4)
////////////////////////
//lam xong ve bieu do log ra cho tung cach, nhac qua chua lam
