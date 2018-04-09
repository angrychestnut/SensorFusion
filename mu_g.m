function [x, P] = mu_g(x, P, yacc, Ra, g0)
% assume fka=0
% g0: 3*1 [0 0 9.8]
hx = (Qq(x))'*g0;    % size of  3*1
[X0,X1,X2,X3] = dQqdq(x);
Hx = [(X0)'*g0, (X1)'*g0, (X2)'*g0, (X3)'*g0];   % size of 3*4
S = Hx*P*(Hx')+Ra;  
K = P*(Hx')/S;    % size of 3*3
x = x+K*(yacc-hx);
P = P-K*S*(K');
end