function Uprime = fRessort(t, U)
    u      = U(1:2);
    uprime = U(3:4);
    Uprime = [ uprime
               -A * u + [1; 1/m2] * (sin(omega1 * t)+sin(omega2 * t))];
endfunction

omega1 = sqrt(lambda1); // thay lambda2 nua
omega2 = sqrt(lambda2);
t = linspace(0,10,1000);
U = ode(zeros(4,1), 0, t, fRessort);
clf
plot(t, U(1:2,:));
