//e = abs(solution(t)-y);
//plot(t,e,'.');
///////////////////////////////////////////////////////////////////
e = [];
ee = [];
eee = [];
ex =[];
h = [];
for N = [5,10,22,47,100,216,465,1000]
    t = linspace(0,4,N+1);
    y0 = 0;
    y = pointMilieu(y0,t,f1);
    e = [e,max(abs(solution(t)-y))];
    yy = euler(y0,t,f1);
    ee = [ee,max(abs(solution(t)-yy))];
    yyy = eulerCauchy(y0,t,f1);
    eee = [eee,max(abs(solution(t)-yyy))];
    yx = ode(y0,0,t,f1);
    ex = [ex,max(abs(solution(t)-yx))];
    h = [h,4/N];
end
//plot(h,e,'.');
//clf
clf
plot(log(h),log(e),'-or');  // lo bo 1,3 roi haha cai duong han dep hon
pm = reglin(log(h),log(e));
plot(log(h),log(ee),'-ob');
eu = reglin(log(h),log(ee));
plot(log(h),log(eee),'-og');
euca = reglin(log(h),log(eee));
plot(log(h),log(ex),'-om');
od = reglin(log(h),log(ex));
legend("Point milieu","Euler","Euler-Cauchy","La macro ode",2);
//disp(ordre)
//chi can the cai ten cua cai function thoi la tracer duoc roi
