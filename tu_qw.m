function [x, P] = tu_qw(x, P, omega, T, Rw)
% Rw: Rv 3*3 covariance matrix of v
Sw = Somega(omega);
Fx = eye(4)+T/2*Sw;
Gx = T/2*Sq(x);
Q = Gx*Rw*(Gx');
fx = Fx*x;
x = fx;
P = Fx*P*(Fx')+Q;
end
