data=[   0.6848025   0.9350498
   0.39082     1.5749813
   0.8704229   0.4492832
   1.5430168   0.0537741
   0.2755866   1.9526662
   0.5476454   1.1124511
   0.0311829   2.5451515
   1.3157052   0.0967604
   1.0509218   0.2645924
   1.9151805   0.0361128
   0.2746431   1.8553444
   1.2655681   0.1206993
   0.1318102   2.3803783
   1.5262405   0.0516627
   0.7050696   0.9179713
   1.5189963   0.0961758
   0.0100374   2.757515 
   1.0916458   0.3187391
   1.1676375   0.3047197
   1.5676449   0.0337858
   0.6817465   0.8722934
   1.9123787   0.0043331
   1.522499    0.0541432
   0.8832689   0.5244115
   0.8176863   0.6063326
   1.661267    0.1227134
   0.479885    1.2901898
   0.8948833   0.5597072
   1.1086709   0.2826685
   0.115249    2.4315334
   0.237743    2.0423506
   0.1959995   2.1737359
   1.2430206   0.1824291
   1.2695789   0.0723635
   0.2452614   2.084543 
   1.2385952   0.1941842
   1.4450246   0.0736002
   1.4677677   0.0402226
   1.7261588   0.078394 
   1.3043625   0.1414913
   0.3832857   1.4920416
   1.3298328   0.0896546
   1.456357    0.1722505
   0.7732634   0.6838013
   1.8385874   0.0312326
   0.8311036   0.6297649];
   
//sort du lieu lai de ve duong thang thoi khong co chi het

t=data(:,1);
y=data(:,2);
[t,k] = gsort(t);
y = y(k);

clf;


A = [ones(t) t t.^2];
theta0 = A\log(y);


function out = resid(x, m)
    a = x(1);
    b = x(2);
    c = x(3);
    out = exp(a + c * t + b * t.^2) - y; 
endfunction

// v la f
[theta,v,info] = lsqrsolve(theta0,resid,size(t,1))
a = theta(1);
b = theta(2);
c = theta(3);
plot(t,exp(a+b*t+c*t.^2),'r-');
plot(t, exp(A*theta0), 'b-');
legend("macro lsqrsolve","logtrick");
plot(t,y,'go');

