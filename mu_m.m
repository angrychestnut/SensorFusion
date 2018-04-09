function [x, P] = mu_m(x, P, mag, m0,Rm) 
% assume fkm=0
% m0: 3*1 [0 mxy mz]
hx = (Qq(x))'*m0;    % size of  3*1
[X0,X1,X2,X3] = dQqdq(x);
Hx = [(X0)'*m0, (X1)'*m0, (X2)'*m0, (X3)'*m0];   % size of 3*4
S = Hx*P*(Hx')+Rm;  
K = P*(Hx')/S;    % size of 3*3
x = x+K*(mag-hx);
P = P-K*S*(K');
end