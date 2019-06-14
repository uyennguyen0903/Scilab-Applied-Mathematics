function Uprime = fRessort(t, U)
    u      = U(1:2);
    uprime = U(3:4);
    Uprime = [ uprime
               -A * u + [1; 1/m2] * sin(omega * t)];
endfunction

omega = sqrt(lambda1); // thay lambda2 nua
t = linspace(0,10,1000);
U = ode(zeros(4,1), 0, t, fRessort);
clf
//anime_os(t,U,m1,m2,5,5);
plot(t, U(1:2,:));
legend("Ressort 1","Ressort 2",2);
